class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :status

  before_save :capitalize_name
  def capitalize_name
    self.name = self.name.split.map(&:capitalize).join(' ')
  end

  before_save :capitalize_name
  def capitalize_name
    self.first_name = self.first_name.split.map(&:capitalize).join(' ')
    self.last_name = self.last_name.split.map(&:capitalize).join(' ')
  end

  def full_name
    "#{first_name} #{last_name}"
  end


end
