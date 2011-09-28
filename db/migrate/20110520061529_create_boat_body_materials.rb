class CreateBoatBodyMaterials < ActiveRecord::Migration
  def self.up
    create_table :boat_body_materials do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_body_materials
  end
end
