class TweetsController < ApplicationController
  before_action :set_tweet, only: [:edit, :show]
  # before_action :move_to_index, except: [:index, :show, :search]

  def index
    @tweets = Tweet.includes(:user).order("created_at DESC").all.page(params[:page]).per(8)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      flash[:notice] = "投稿が完了しました"
      redirect_to root_path
    else
      flash.now[:alert] = 'メッセージを入力してください。'
      render :new
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to root_path
  end

  def edit
  end

  def update
    @tweet = Tweet.find(params[:id])
    @tweet.update(tweet_params)
    
    if @tweet.save
      flash[:notice] = "更新が完了しました"
      redirect_to root_path
    else
      # redirect_to("/tweets/#{@tweet.id}/edit")
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @tweet.comments.includes(:user)
    # flash[:notice] = "コメントを投稿しました"
  end

  def search
    @tweets = Tweet.search(params[:keyword])
    respond_to do |format|
      format.html
      format.json
    end
  end

  # def new_guest
  #   user = User.find_or_create_by!(email: 'guest@example.com') do |user|
  #     user.password = SecureRandom.urlsafe_base64
  #     # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
  #   end
  #   sign_in user
  #   redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  # end

  private
  def tweet_params
    params.require(:tweet).permit(:image, :text, :genre_id).merge(user_id: current_user.id)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
