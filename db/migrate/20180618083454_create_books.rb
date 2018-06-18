class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name, null: false
      t.integer :author_id
      t.text :book_url

      t.timestamps
    end
  end
end
