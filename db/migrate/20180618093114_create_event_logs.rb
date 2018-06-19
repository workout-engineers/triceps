class CreateEventLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :event_logs do |t|
      t.references :user, foreign_key: true, comment:"ユーザーのid"
      t.integer :event_type, null: false, comment:"アクションのタイプ"
      t.references :tweet, foreign_key: true, comment:"投稿のid"
      t.references :book, foreign_key: true, comment:"bookのid"

      t.timestamps
    end
  end
end
