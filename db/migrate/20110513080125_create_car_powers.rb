class CreateCarPowers < ActiveRecord::Migration
  def self.up
    create_table :car_powers do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :car_powers
  end
end
