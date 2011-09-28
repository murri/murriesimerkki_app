class CreateCarModelSections < ActiveRecord::Migration
  def self.up
    create_table :car_model_sections do |t|
      t.string :name
      t.integer :car_make_id

      t.timestamps
    end
  end

  def self.down
    drop_table :car_model_sections
  end
end
