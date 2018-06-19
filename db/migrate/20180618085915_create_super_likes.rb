class CreateSuperLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :super_likes do |t|
      t.integer :user_id, null: false, comment:"スーパーいいねしたユーザーのid"
      t.integer :tweet_id, null: false, comment:"スーパーいいねされた投稿のid"

      t.timestamps

      t.index [:user_id, :tweet_id], unique: true
    end
  end
end
