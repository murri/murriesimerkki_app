class CreateBoatLengths < ActiveRecord::Migration
  def self.up
    create_table :boat_lengths do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_lengths
  end
end
