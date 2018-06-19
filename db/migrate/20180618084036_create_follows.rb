class CreateFollows < ActiveRecord::Migration[5.1]
  def change
    create_table :follows do |t|
      t.references :user, foreign_key: true, comment:"ユーザーのid"
      t.integer :following_user_id, null: false, comment:"上記ユーザーがフォローしている人のid"

      t.timestamps
    end
  end
end
