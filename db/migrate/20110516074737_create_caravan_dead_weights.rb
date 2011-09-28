class CreateCaravanDeadWeights < ActiveRecord::Migration
  def self.up
    create_table :caravan_dead_weights do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :caravan_dead_weights
  end
end
