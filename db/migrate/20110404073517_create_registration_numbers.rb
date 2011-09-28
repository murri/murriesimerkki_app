class CreateRegistrationNumbers < ActiveRecord::Migration
  def self.up
    create_table :registration_numbers do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :registration_numbers
  end
end
