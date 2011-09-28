class CreateMachineMileages < ActiveRecord::Migration
  def self.up
    create_table :machine_mileages do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :machine_mileages
  end
end
