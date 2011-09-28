class CreateMachineCategorySections < ActiveRecord::Migration
  def self.up
    create_table :machine_category_sections do |t|
      t.string :name
      t.integer :machine_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :machine_category_sections
  end
end
