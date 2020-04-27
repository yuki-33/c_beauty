class CreateUserShops < ActiveRecord::Migration[6.0]
  def change
    create_table :user_shops do |t|
      t.integer :user_id
      t.integer :shop_id

      t.timestamps
    end
  end
end
