class CreateFavoriteAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_authors do |t|
      t.references :user, foreign_key: true, comment:"ユーザーのid"
      t.references :author, foreign_key: true, comment:"著者のid"

      t.timestamps
    end
  end
end
