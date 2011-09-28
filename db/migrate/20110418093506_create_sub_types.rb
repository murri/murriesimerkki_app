class CreateSubTypes < ActiveRecord::Migration
  def self.up
    create_table :sub_types do |t|
      t.string :name
      t.integer :type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sub_types
  end
end