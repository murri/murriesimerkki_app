class CreateTypeSections < ActiveRecord::Migration
  def self.up
    create_table :type_sections do |t|
      t.string :name
      t.integer :vehicle_class_id

      t.timestamps
    end
  end

  def self.down
    drop_table :type_sections
  end
end
