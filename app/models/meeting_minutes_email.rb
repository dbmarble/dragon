class MeetingMinutesEmail < ActiveRecord::Base
  attr_accessible :address

  validates :address,
            :presence => true,
            :uniqueness => true,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }

end
