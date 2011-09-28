class CreateMotoColorTypes < ActiveRecord::Migration
  def self.up
    create_table :moto_color_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :moto_color_types
  end
end
