class ChangeMenusColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :menus, :menus, :menu
  end
end
