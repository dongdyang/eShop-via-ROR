class CreateUserinfos < ActiveRecord::Migration
  def change
    create_table :userinfos do |t|
      t.string :name
      t.integer :age
      t.string :idcard
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :userinfos,:user_id
  end
end
