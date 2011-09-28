class CreateMotoMakes < ActiveRecord::Migration
  def self.up
    create_table :moto_makes do |t|
      t.string :name
      t.integer :sub_vehicle_id

      t.timestamps
    end
  end

  def self.down
    drop_table :moto_makes
  end
end
