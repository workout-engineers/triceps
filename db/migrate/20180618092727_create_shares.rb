class CreateShares < ActiveRecord::Migration[5.1]
  def change
    create_table :shares do |t|
      t.integer :user_id, foreign_key: true, comment:"シェアしたユーザーのid"
      t.integer :tweet_id, foreign_key: true, comment:"シェアされた投稿のid"

      t.timestamps

      t.index [:user_id, :tweet_id], unique: true
    end
  end
end
