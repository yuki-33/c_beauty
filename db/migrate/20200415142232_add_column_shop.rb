class AddColumnShop < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :shop_name_katakana, :string
    add_column :shops, :owner_name, :string
    add_column :shops, :owner_name_katakana, :string
    add_column :shops, :employee_name, :string
    add_column :shops, :enoloyee_name_katakana, :string
    add_column :shops, :about_owner, :text
    add_column :shops, :about_employee, :text
    add_column :shops, :image_top, :string

  end
end
