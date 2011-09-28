class CreateMachineGrossWeights < ActiveRecord::Migration
  def self.up
    create_table :machine_gross_weights do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :machine_gross_weights
  end
end
