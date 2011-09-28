class CreateTotalOwners < ActiveRecord::Migration
  def self.up
    create_table :total_owners do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :total_owners
  end
end
