class AddStatusIdToProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :status_id, :integer
  end
end
