class FollowsController < ApplicationController

  def follow
    Follow.create(follow_params)
  end

  private

  def follow_params
    params.require(:follow).permit(:followed_user_id).merge(following_user_id: current_user.id)
  end

end
