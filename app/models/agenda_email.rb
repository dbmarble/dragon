class AgendaEmail < ActiveRecord::Base
  attr_accessible :address

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :address, presence: true, format: { with: VALID_EMAIL_REGEX }

  before_save { |agendaemail| agendaemail.address = address.downcase }
end
