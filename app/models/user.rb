class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  validates :name, presence: { message: '名前を入力してください' }
  validates :agreement, presence: { message: '利用規約への同意が必要です。' }

  has_many :tweets, dependent: :destroy
  has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: 'Relationship', foreign_key: 'following_id', dependent: :destroy
  has_many :followings, through: :active_relationships
  has_many :followers, through: :passive_relationships
end
