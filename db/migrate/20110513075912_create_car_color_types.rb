class CreateCarColorTypes < ActiveRecord::Migration
  def self.up
    create_table :car_color_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :car_color_types
  end
end
