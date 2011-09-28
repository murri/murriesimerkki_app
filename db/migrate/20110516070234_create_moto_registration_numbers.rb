class CreateMotoRegistrationNumbers < ActiveRecord::Migration
  def self.up
    create_table :moto_registration_numbers do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :moto_registration_numbers
  end
end
