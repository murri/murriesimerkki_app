class CreateCaravanModelSections < ActiveRecord::Migration
  def self.up
    create_table :caravan_model_sections do |t|
      t.string :name
      t.integer :caravan_make_section_id

      t.timestamps
    end
  end

  def self.down
    drop_table :caravan_model_sections
  end
end
