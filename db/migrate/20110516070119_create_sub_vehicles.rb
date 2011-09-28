class CreateSubVehicles < ActiveRecord::Migration
  def self.up
    create_table :sub_vehicles do |t|
      t.string :name
      t.integer :vehicle_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sub_vehicles
  end
end
