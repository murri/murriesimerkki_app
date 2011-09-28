class CreateCarColors < ActiveRecord::Migration
  def self.up
    create_table :car_colors do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :car_colors
  end
end
