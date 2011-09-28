class CreateMachineTotalOwners < ActiveRecord::Migration
  def self.up
    create_table :machine_total_owners do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :machine_total_owners
  end
end
