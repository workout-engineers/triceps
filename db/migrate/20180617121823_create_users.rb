class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false, comment:"ユーザーの名前"
      t.string :email, null: false, comment:"ユーザーのemail"
      t.string :picture, comment:"ユーザーの顔写真"


      t.timestamps
    end
  end
end
