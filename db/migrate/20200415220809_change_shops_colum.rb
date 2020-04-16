class ChangeShopsColum < ActiveRecord::Migration[6.0]
  def change
    rename_column :shops, :enoloyee_name_katakana, :employee_name_katakana
  end
end
