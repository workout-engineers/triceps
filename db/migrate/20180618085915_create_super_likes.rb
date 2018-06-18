class CreateSuperLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :super_likes do |t|

      t.timestamps
    end
  end
end
