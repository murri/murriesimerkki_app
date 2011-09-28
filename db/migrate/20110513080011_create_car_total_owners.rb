class CreateCarTotalOwners < ActiveRecord::Migration
  def self.up
    create_table :car_total_owners do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :car_total_owners
  end
end
