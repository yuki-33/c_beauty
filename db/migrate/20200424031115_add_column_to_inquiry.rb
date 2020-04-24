class AddColumnToInquiry < ActiveRecord::Migration[6.0]
  def change
    add_column :inquiries, :note, :text
  end
end
