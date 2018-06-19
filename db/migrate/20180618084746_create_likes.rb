class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :user_id, foreign_key: true, comment:"いいねしたユーザーのid"
      t.integer :tweet_id, foreign_key: true, comment:"いいねされた投稿のid"

      t.timestamps

      t.index [:user_id, :tweet_id], unique: true
    end
  end
end
