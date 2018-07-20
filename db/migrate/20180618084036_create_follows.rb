class CreateFollows < ActiveRecord::Migration[5.1]
  def change
    create_table :follows do |t|
      t.integer :following_user_id, foreign_key: true, comment:"フォローしているユーザーのid"
      t.integer :followed_user_id, null: false, comment:"フォローされている人のid"

      t.timestamps

      t.index [:following_user_id, :followed_user_id], unique: true
    end
  end
end
