class Inquiry < ApplicationRecord
  belongs_to :shop
  has_many :menus
end
