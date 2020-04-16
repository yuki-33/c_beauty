class ChangeAresColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :areas, :area, :name
  end
end
