class CreateEventLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :event_logs do |t|
      t.integer :user_id, foreign_key: true, comment:"ユーザーのid"
      t.integer :event_type, null: false, comment:"アクションのタイプ"
      t.integer :tweet_id, foreign_key: true, comment:"投稿のid"
      t.integer :book_id, foreign_key: true, comment:"bookのid"

      t.timestamps
    end
  end
end
