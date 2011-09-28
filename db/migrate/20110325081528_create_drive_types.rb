class CreateDriveTypes < ActiveRecord::Migration
  def self.up
    create_table :drive_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :drive_types
  end
end
