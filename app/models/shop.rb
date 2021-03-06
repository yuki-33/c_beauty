class Shop < ApplicationRecord
  mount_uploader :image, BeautyImageUploader
  mount_uploader :image_top, BeautyImageUploader
  mount_uploader :image_2, BeautyImageUploader
  mount_uploader :image_3, BeautyImageUploader
  mount_uploader :image_4, BeautyImageUploader
  mount_uploader :image_owner, BeautyImageUploader
  mount_uploader :image_employee, BeautyImageUploader

  has_many :shop_categories, dependent: :destroy
  has_many :categories, through: :shop_categories
  has_many :menus
  has_many :inquiries
  accepts_nested_attributes_for :menus
  belongs_to :area
  belongs_to :admin
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites

  def favorited_by?(current_user)
    favorites.where(user_id: current_user.id).exists?
  end

end
