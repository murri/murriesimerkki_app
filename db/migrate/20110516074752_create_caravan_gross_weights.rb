class CreateCaravanGrossWeights < ActiveRecord::Migration
  def self.up
    create_table :caravan_gross_weights do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :caravan_gross_weights
  end
end
