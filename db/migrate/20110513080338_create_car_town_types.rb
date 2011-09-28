class CreateCarTownTypes < ActiveRecord::Migration
  def self.up
    create_table :car_town_types do |t|
      t.string :name
      t.integer :car_domicile_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :car_town_types
  end
end
