class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :adress
      t.string :tel
      t.string :business_hour
      t.string :regular_closed
      t.integer :area_id
      t.text :introduction
      t.string :status
      t.string :image     

      t.timestamps
    end
  end
end
