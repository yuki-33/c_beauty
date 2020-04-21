class AddCategoryColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :category_key, :string
  end
end
