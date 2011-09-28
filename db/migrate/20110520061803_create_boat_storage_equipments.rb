class CreateBoatStorageEquipments < ActiveRecord::Migration
  def self.up
    create_table :boat_storage_equipments do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_storage_equipments
  end
end
