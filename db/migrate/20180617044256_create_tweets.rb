class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.text :quote, null: false
      t.text :comment
      t.integer :book_id
      t.integer :user_id

      t.timestamps
    end
  end
end
