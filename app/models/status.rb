class Status < ApplicationRecord
  belongs_to :profile
  has_one :inquiry
end
