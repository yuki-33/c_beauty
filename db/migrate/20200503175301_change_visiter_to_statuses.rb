class ChangeVisiterToStatuses < ActiveRecord::Migration[6.0]
  def change
    rename_column :statuses, :visiter, :name
  end
end
