class CreateMachineEngineSizes < ActiveRecord::Migration
  def self.up
    create_table :machine_engine_sizes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :machine_engine_sizes
  end
end
