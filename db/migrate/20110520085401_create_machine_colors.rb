class CreateMachineColors < ActiveRecord::Migration
  def self.up
    create_table :machine_colors do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :machine_colors
  end
end
