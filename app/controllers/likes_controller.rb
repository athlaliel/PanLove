class LikesController < ApplicationController
  before_action :set_tweet, only: [:create, :destroy]

  def create
    @like = Like.create(user_id: current_user.id, tweet_id: params[:tweet_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, tweet_id: params[:tweet_id])
    @like.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def set_tweet
    @tweet = Tweet.find_by(params[:tweet_id])
  end
end
