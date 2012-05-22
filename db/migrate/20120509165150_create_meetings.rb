class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :title
      t.string :logo_url
      t.text :reason
      t.string :location
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :user_id

      t.timestamps
    end
  end
end
