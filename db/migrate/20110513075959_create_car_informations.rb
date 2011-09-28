class CreateCarInformations < ActiveRecord::Migration
  def self.up
    create_table :car_informations do |t|
      t.text :name

      t.timestamps
    end
  end

  def self.down
    drop_table :car_informations
  end
end
