class RelationshipsController < ApplicationController
  before_action :auth_user

  def create
    @user = User.find(params[:following_id])
    current_user.follow(@user)
    redirect_to @user
  end

  def destroy
    unfollow_user_id = Relationship.find(params[:id]).following_id
    @user = User.find(unfollow_user_id)
    current_user.unfollow(@user)
    redirect_to @user
  end

end
