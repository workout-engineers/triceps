class CreateFavoriteAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_authors do |t|
      t.integer :user_id, null:false, comment:"ユーザーのid"
      t.integer :author_id, null:false, comment:"著者のid"

      t.timestamps
    end
  end
end
