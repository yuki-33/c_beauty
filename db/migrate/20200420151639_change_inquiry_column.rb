class ChangeInquiryColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :inquiries, :menu, :menu_id
  end
end
