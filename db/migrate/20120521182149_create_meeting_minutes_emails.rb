class CreateMeetingMinutesEmails < ActiveRecord::Migration
  def change
    create_table :meeting_minutes_emails do |t|
      t.string :address

      t.timestamps
    end
  end
end
