class AddImageToShop < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :email, :string
    add_column :shops, :website, :string
    add_column :shops, :image_2, :string
    add_column :shops, :image_3, :string
    add_column :shops, :image_4, :string
    add_column :shops, :image_owner, :string
    add_column :shops, :image_employee, :string
    add_column :shops, :about_us, :text
    add_column :shops, :instagram, :string
    add_column :shops, :facebook, :string
  end
end
