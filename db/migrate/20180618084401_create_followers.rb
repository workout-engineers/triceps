class CreateFollowers < ActiveRecord::Migration[5.1]
  def change
    create_table :followers do |t|
      t.integer :user_id, null: false
      t.integer :followed_user_id, null: false

      t.timestamps
    end
  end
end
