class CreateMachineInformations < ActiveRecord::Migration
  def self.up
    create_table :machine_informations do |t|
      t.text :name

      t.timestamps
    end
  end

  def self.down
    drop_table :machine_informations
  end
end
