class Tweet < ApplicationRecord
  belongs_to :user

  def correct_user(current_user)
    return true if user_id == current_user.id
  end
end
