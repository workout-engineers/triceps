class UsersController < ApplicationController
  before_action :set_user

  def followings
    @title = 'がフォロー中'
    @users = @user.followings
    render 'show_follow'
  end

  def followers
    @title = 'のフォロワー'
    @users = @user.followers
    render 'show_follow'
  end

  def show
    @tweets = @user.tweets.order('created_at DESC')
    @new_relationship = current_user.active_relationships.build
    @relationship = current_user.active_relationships.find_by(following_id: @user.id)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
