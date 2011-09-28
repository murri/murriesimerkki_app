class CreateCarEngineSizes < ActiveRecord::Migration
  def self.up
    create_table :car_engine_sizes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :car_engine_sizes
  end
end
