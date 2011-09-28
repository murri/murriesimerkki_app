class CreateBoatDomicileTypes < ActiveRecord::Migration
  def self.up
    create_table :boat_domicile_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_domicile_types
  end
end
