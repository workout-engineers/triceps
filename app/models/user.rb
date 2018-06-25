class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: {message: '名前を入力してください'}
  validates :agreement, presence: {message: "利用規約への同意が必要です。"}
end
