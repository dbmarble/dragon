class CreateAgendaSamples < ActiveRecord::Migration
  def change
    create_table :agenda_samples do |t|
      t.string :email

      t.timestamps
    end
  end
end
