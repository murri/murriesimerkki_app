class CreateMotoMileages < ActiveRecord::Migration
  def self.up
    create_table :moto_mileages do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :moto_mileages
  end
end
