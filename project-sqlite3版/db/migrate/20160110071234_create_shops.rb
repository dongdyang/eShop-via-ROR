class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.integer :product_id
      t.string :name
      t.string :telephone
      t.text :location

      t.timestamps null: false
    end

    add_index :shops, :product_id

  end
end
