class CreateCarDriveTypes < ActiveRecord::Migration
  def self.up
    create_table :car_drive_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :car_drive_types
  end
end
