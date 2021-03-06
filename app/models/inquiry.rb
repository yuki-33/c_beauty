class Inquiry < ApplicationRecord
  belongs_to :shop
  belongs_to :user, optional: true
  has_one :menu

  validates :name, presence: true
  validates :email, presence: true
  validates :tel, presence: true
  validates :datetime_1, presence: true
  validates :menu_id, presence: true

  scope :by_update, ->{ order(update_at: :asc) }

end
