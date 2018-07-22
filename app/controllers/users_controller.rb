class UsersController < ApplicationController

  def followings
    @user = User.find(params[:id])
    @users = @user.followings
    render "show_follow"
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers
    render "show_follow"
  end

  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets.order('created_at DESC')
  end
end
