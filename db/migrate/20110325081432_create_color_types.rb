class CreateColorTypes < ActiveRecord::Migration
  def self.up
    create_table :color_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :color_types
  end
end
