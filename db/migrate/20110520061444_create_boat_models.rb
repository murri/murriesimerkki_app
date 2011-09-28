class CreateBoatModels < ActiveRecord::Migration
  def self.up
    create_table :boat_models do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_models
  end
end
