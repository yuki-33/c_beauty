class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_one :profile
  has_one :inquiry
  has_many :user_shops, dependent: :destroy
  has_many :shops, through: :user_shops

end
