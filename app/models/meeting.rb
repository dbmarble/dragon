class Meeting < ActiveRecord::Base
  belongs_to :user
  attr_accessible :date, :end_time, :location, :logo_url, :reason, :start_time, :title

end
