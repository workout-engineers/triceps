class Tweet < ApplicationRecord
  belongs_to :user

  def correct_user
    @tweet = Tweet.find(params[:id])
    if @tweet.user_id == current_user.id
      return true
    else
      redirect_to user_path(current_user)
    end
  end
end

