class CreateCarGearboxTypes < ActiveRecord::Migration
  def self.up
    create_table :car_gearbox_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :car_gearbox_types
  end
end
