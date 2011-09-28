class CreateCaravanTotalOwners < ActiveRecord::Migration
  def self.up
    create_table :caravan_total_owners do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :caravan_total_owners
  end
end
