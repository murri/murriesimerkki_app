class CreateBoatUserEmails < ActiveRecord::Migration
  def self.up
    create_table :boat_user_emails do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_user_emails
  end
end
