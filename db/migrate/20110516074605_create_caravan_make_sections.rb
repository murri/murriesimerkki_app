class CreateCaravanMakeSections < ActiveRecord::Migration
  def self.up
    create_table :caravan_make_sections do |t|
      t.string :name
      t.integer :caravan_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :caravan_make_sections
  end
end
