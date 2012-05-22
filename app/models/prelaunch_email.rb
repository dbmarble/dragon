class PrelaunchEmail < ActiveRecord::Base
  attr_accessible :address, :name

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :address, presence: true, format: { with: VALID_EMAIL_REGEX }

  before_save { |prelaunchemail| prelaunchemail.address = address.downcase }
end
