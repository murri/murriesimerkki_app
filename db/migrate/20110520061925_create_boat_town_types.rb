class CreateBoatTownTypes < ActiveRecord::Migration
  def self.up
    create_table :boat_town_types do |t|
      t.string :name
      t.integer :boat_domicile_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_town_types
  end
end
