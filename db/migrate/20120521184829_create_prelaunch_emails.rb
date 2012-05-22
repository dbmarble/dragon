class CreatePrelaunchEmails < ActiveRecord::Migration
  def change
    create_table :prelaunch_emails do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
