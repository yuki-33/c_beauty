class ChangeInquiryColumnDate < ActiveRecord::Migration[6.0]
  def change
        rename_column :inquiries, :menu_id, :integer
  end
end
