class CreateMotoUserEmails < ActiveRecord::Migration
  def self.up
    create_table :moto_user_emails do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :moto_user_emails
  end
end
