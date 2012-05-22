class PrelaunchEmail < ActiveRecord::Base
  attr_accessible :address, :name

  validates :name, presence: true, length: { maximum: 50 }
  validates :address,
            :presence => true,
            :uniqueness => true,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }


end
