class CreateMachineTownTypes < ActiveRecord::Migration
  def self.up
    create_table :machine_town_types do |t|
      t.string :name
      t.integer :machine_domicile_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :machine_town_types
  end
end
