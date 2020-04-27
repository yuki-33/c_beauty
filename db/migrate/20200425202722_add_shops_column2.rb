class AddShopsColumn2 < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :note, :text
  end
end
