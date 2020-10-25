class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.integer :shop_id
      t.string :menus
      t.string :price

      t.timestamps
    end
  end
end
