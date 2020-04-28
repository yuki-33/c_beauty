class Inquiry < ApplicationRecord
  belongs_to :shop
  belongs_to :user, optional: true
  has_many :menus

end
