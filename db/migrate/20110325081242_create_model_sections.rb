class CreateModelSections < ActiveRecord::Migration
  def self.up
    create_table :model_sections do |t|
      t.string :name
      t.integer :make_id

      t.timestamps
    end
  end

  def self.down
    drop_table :model_sections
  end
end
