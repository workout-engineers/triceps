class CreateFavoriteAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_authors do |t|

      t.timestamps
    end
  end
end
