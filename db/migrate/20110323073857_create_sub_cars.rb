class CreateSubCars < ActiveRecord::Migration
  def self.up
    create_table :sub_cars do |t|
      t.string :name
      t.integer :car_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sub_cars
  end
end
