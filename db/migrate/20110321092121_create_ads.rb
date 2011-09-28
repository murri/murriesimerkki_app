class CreateAds < ActiveRecord::Migration
  def self.up
    create_table :ads do |t|
      t.string :type
      t.string :make
      t.string :model
      t.string :subtype
      t.date :yearmodel
      t.date :registration
      t.date :inspectiondate
      t.string :color
      t.string :colortype
      t.decimal :price
      t.string :registernumber
      t.text :information
      t.string :mileage
      t.decimal :enginesize
      t.string :drivetype
      t.string :fuel
      t.string :transmission
      t.decimal :power
      t.string :emission
      t.string :topspeed
      t.decimal :acceleration
      t.decimal :consumption
      t.decimal :weight
      t.string :domicile
      t.string :town

      t.timestamps
    end
  end

  def self.down
    drop_table :ads
  end
end
