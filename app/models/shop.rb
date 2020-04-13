class Shop < ApplicationRecord
  mount_uploader :image, BeautyImageUploader
  has_many :shop_categories, dependent: :destroy
  has_many :categories, through: :shop_categories

end
