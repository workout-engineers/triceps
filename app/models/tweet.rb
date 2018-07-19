class Tweet < ApplicationRecord
  belongs_to :user
  attr_accessor :current_user

  def correct_user
    return true if user_id == current_user.id
  end
end

