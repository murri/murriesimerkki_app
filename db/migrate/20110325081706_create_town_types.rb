class CreateTownTypes < ActiveRecord::Migration
  def self.up
    create_table :town_types do |t|
      t.string :name
      t.integer :domicile_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :town_types
  end
end
