class CreateMotoTownTypes < ActiveRecord::Migration
  def self.up
    create_table :moto_town_types do |t|
      t.string :name
      t.integer :moto_domicile_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :moto_town_types
  end
end
