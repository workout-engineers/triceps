class CreateEventLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :event_logs do |t|
      t.integer :user_id, null: false
      t.integer :event_type, null: false
      t.integer :tweet_id, null: false
      t.integer :book_id, null: false

      t.timestamps
    end
  end
end
