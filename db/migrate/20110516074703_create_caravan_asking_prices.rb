class CreateCaravanAskingPrices < ActiveRecord::Migration
  def self.up
    create_table :caravan_asking_prices do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :caravan_asking_prices
  end
end
