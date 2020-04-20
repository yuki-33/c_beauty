class CreateInquiries < ActiveRecord::Migration[6.0]
  def change
    create_table :inquiries do |t|
      t.integer :shop_id
      t.integer :menu_id
      t.string :name
      t.string :email
      t.string :tel
      t.datetime :datetime_1
      t.datetime :datetime_2
      t.datetime :datetime_3

      t.timestamps
    end
  end
end
