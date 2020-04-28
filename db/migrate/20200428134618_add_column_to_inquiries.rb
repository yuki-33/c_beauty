class AddColumnToInquiries < ActiveRecord::Migration[6.0]
  def change
    add_column :inquiries, :user_id, :integer
  end
end
