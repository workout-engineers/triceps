class CreateFavoriteBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_books do |t|
      t.integer :user_id, foreign_key: true, comment:"ユーザーのid"
      t.integer :book_id, foreign_key: true, comment:"bookのid"

      t.timestamps
    end
  end
end
