class CreateAgendaEmails < ActiveRecord::Migration
  def change
    create_table :agenda_emails do |t|
      t.string :address

      t.timestamps
    end
  end
end
