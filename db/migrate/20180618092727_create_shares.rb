class CreateShares < ActiveRecord::Migration[5.1]
  def change
    create_table :shares do |t|
      t.integer :user_id, null: false
      t.integer :tweet_id, null: false

      t.timestamps

      t.index [:user_id, :tweet_id], unique: true
    end
  end
end
