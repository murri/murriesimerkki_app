class CreateBoatWidths < ActiveRecord::Migration
  def self.up
    create_table :boat_widths do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_widths
  end
end
