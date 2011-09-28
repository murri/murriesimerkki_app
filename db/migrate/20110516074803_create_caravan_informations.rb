class CreateCaravanInformations < ActiveRecord::Migration
  def self.up
    create_table :caravan_informations do |t|
      t.text :name

      t.timestamps
    end
  end

  def self.down
    drop_table :caravan_informations
  end
end
