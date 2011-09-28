class CreateMachineFuelTypes < ActiveRecord::Migration
  def self.up
    create_table :machine_fuel_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :machine_fuel_types
  end
end
