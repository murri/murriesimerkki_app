class CreateBoatYearModels < ActiveRecord::Migration
  def self.up
    create_table :boat_year_models do |t|
      t.date :name

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_year_models
  end
end
