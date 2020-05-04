class RemoveStatusFromProfile < ActiveRecord::Migration[6.0]
  def change
    remove_column :profiles, :status, :strings
  end
end
