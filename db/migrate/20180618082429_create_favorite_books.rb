class CreateFavoriteBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_books do |t|
      t.references :user, foreign_key: true, comment:"ユーザーのid"
      t.references :book, foreign_key: true, comment:"bookのid"

      t.timestamps
    end
  end
end
