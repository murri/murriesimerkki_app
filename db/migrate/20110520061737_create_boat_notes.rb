class CreateBoatNotes < ActiveRecord::Migration
  def self.up
    create_table :boat_notes do |t|
      t.text :name

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_notes
  end
end
