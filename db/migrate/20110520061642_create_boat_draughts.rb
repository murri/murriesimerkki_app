class CreateBoatDraughts < ActiveRecord::Migration
  def self.up
    create_table :boat_draughts do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_draughts
  end
end
