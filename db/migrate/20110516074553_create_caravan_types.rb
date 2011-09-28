class CreateCaravanTypes < ActiveRecord::Migration
  def self.up
    create_table :caravan_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :caravan_types
  end
end
