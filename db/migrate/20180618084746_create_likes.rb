class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true, comment:"いいねしたユーザーのid"
      t.references :tweet, foreign_key: true, comment:"いいねされた投稿のid"

      t.timestamps

      t.index [:user_id, :tweet_id], unique: true
    end
  end
end
