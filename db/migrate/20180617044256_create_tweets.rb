class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.text :quote, null: false, comment:"本の一節の引用"
      t.text :comment, comment:"一節への投稿者のコメント"
      t.integer :book_id, foreign_key: true, comment:"bookのid"
      t.integer :user_id, foreign_key: true, comment:"userのid"

      t.timestamps
    end
  end
end
