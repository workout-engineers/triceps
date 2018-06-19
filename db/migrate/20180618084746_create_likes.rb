class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :user_id, null: false, comment:"いいねしたユーザーのid"
      t.integer :tweet_id, null: false, comment:"いいねされた投稿のid"

      t.timestamps

      t.index [:user_id, :tweet_id], unique: true
    end
  end
end
