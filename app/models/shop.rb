class Shop < ApplicationRecord
  mount_uploader :image, BeautyImageUploader
end
