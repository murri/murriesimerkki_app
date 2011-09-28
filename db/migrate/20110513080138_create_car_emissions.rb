class CreateCarEmissions < ActiveRecord::Migration
  def self.up
    create_table :car_emissions do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :car_emissions
  end
end
