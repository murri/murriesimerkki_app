class CreateVehicleClasses < ActiveRecord::Migration
  def self.up
    create_table :vehicle_classes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :vehicle_classes
  end
end
