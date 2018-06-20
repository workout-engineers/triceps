class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name, null: false, comment:"bookの名前"
      t.integer :author_id, foreign_key: true, comment:"著者のid"
      t.text :book_url, comment:"bookのアフィリエイトurl"

      t.timestamps
    end
  end
end
