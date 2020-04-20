class ChangeInquiryColumnname < ActiveRecord::Migration[6.0]
  def change
    rename_column :inquiries, :integer, :menu_id
  end
end
