class CreateCaravanLenghts < ActiveRecord::Migration
  def self.up
    create_table :caravan_lenghts do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :caravan_lenghts
  end
end
