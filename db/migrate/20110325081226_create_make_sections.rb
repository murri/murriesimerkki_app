class CreateMakeSections < ActiveRecord::Migration
  def self.up
    create_table :make_sections do |t|
      t.string :name
      t.integer :type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :make_sections
  end
end
