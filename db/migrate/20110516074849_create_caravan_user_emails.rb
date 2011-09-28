class CreateCaravanUserEmails < ActiveRecord::Migration
  def self.up
    create_table :caravan_user_emails do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :caravan_user_emails
  end
end
