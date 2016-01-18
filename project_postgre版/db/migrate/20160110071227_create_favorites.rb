class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :rating
      t.integer :user_id
      t.integer :product_id
      t.timestamps null: false
    end
    add_index :favorites,:user_id
    add_index :favorites,:product_id
  end
end
