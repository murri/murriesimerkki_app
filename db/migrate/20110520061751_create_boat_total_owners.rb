class CreateBoatTotalOwners < ActiveRecord::Migration
  def self.up
    create_table :boat_total_owners do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_total_owners
  end
end
