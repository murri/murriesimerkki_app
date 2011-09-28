class CreateCarMakeSections < ActiveRecord::Migration
  def self.up
    create_table :car_make_sections do |t|
      t.string :name
      t.integer :car_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :car_make_sections
  end
end
