class CreateMinutesSamples < ActiveRecord::Migration
  def change
    create_table :minutes_samples do |t|
      t.string :email

      t.timestamps
    end
  end
end
