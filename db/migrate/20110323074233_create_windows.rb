class CreateWindows < ActiveRecord::Migration
  def self.up
    create_table :windows do |t|
      t.string :name
      t.integer :car_id
      t.integer :sub_car_id

      t.timestamps
    end
  end

  def self.down
    drop_table :windows
  end
end
