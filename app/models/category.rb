class Category < ApplicationRecord
  has_many :shop_categories, dependent: :destroy
  has_many :shops, through: :shop_categories

end
