class ChangeInquiryColumndate2 < ActiveRecord::Migration[6.0]
  def change
    change_column :inquiries, :menu_id, :integer
  end
end
