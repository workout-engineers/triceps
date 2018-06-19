class CreateSuperLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :super_likes do |t|
      t.references :user, foreign_key: true, comment:"スーパーいいねしたユーザーのid"
      t.references :tweet, foreign_key: true, comment:"スーパーいいねされた投稿のid"

      t.timestamps

      t.index [:user_id, :tweet_id], unique: true
    end
  end
end
