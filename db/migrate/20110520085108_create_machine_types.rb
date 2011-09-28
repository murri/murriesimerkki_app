class CreateMachineTypes < ActiveRecord::Migration
  def self.up
    create_table :machine_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :machine_types
  end
end
