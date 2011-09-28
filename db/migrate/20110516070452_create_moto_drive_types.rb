class CreateMotoDriveTypes < ActiveRecord::Migration
  def self.up
    create_table :moto_drive_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :moto_drive_types
  end
end
