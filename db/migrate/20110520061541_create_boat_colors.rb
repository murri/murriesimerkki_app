class CreateBoatColors < ActiveRecord::Migration
  def self.up
    create_table :boat_colors do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_colors
  end
end
