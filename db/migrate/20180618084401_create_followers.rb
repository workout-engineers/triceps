class CreateFollowers < ActiveRecord::Migration[5.1]
  def change
    create_table :followers do |t|
      t.references :user, foreign_key: true, comment:"ユーザーのid"
      t.integer :followed_user_id, null: false, comment:"上記ユーザーがフォローされている人のid"

      t.timestamps
    end
  end
end
