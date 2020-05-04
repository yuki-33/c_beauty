class RemoveOtherFromStatuses < ActiveRecord::Migration[6.0]
  def change
    remove_column :statuses, :student, :string
    remove_column :statuses, :worker, :string
    remove_column :statuses, :resident, :string
    remove_column :statuses, :other, :string
  end
end
