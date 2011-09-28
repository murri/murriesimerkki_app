class CreateCaravanTownTypes < ActiveRecord::Migration
  def self.up
    create_table :caravan_town_types do |t|
      t.string :name
      t.integer :caravan_domicile_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :caravan_town_types
  end
end
