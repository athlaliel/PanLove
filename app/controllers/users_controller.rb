class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @nickname = @user.nickname
    @tweets = @user.tweets
  end

  # def create
  #   @user = User.new(name: params[:name], nickname: params[:nickname], email: params[:email])            
  #   @user.save            
  #   redirect_to("/users/#{@user.id}")
  # end

end
