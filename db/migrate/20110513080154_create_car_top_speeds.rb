class CreateCarTopSpeeds < ActiveRecord::Migration
  def self.up
    create_table :car_top_speeds do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :car_top_speeds
  end
end
