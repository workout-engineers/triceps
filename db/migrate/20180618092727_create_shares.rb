class CreateShares < ActiveRecord::Migration[5.1]
  def change
    create_table :shares do |t|
      t.references :user, foreign_key: true, comment:"シェアしたユーザーのid"
      t.references :tweet, foreign_key: true, comment:"シェアされた投稿のid"

      t.timestamps

      t.index [:user_id, :tweet_id], unique: true
    end
  end
end
