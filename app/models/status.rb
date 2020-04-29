class Status < ApplicationRecord
  belongs_to :profiles
  has_one :inquiry
end
