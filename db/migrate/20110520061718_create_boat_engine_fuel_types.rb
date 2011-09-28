class CreateBoatEngineFuelTypes < ActiveRecord::Migration
  def self.up
    create_table :boat_engine_fuel_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_engine_fuel_types
  end
end
