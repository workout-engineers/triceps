class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  validates :name, presence: { message: '名前を入力してください' }
  validates :agreement, presence: { message: '利用規約への同意が必要です。' }

  has_many :tweets, dependent: :destroy
  has_many :active_relationships, class_name: 'Relationship', foreign_key: 'follower_id', dependent: :destroy, \
                                  inverse_of: :following
  has_many :passive_relationships, class_name: 'Relationship', foreign_key: 'following_id', dependent: :destroy, \
                                   inverse_of: :follower
  has_many :followings, through: :active_relationships
  has_many :followers, through: :passive_relationships

  # ユーザーをフォローする
  def follow(other_user)
    active_relationships.create(following_id: other_user.id)
  end

  # ユーザーをフォロー解除する
  def unfollow(other_user)
    active_relationships.find_by(following_id: other_user.id).destroy
  end

  def following?(other_user)
    followings.include?(other_user)
  end
end
