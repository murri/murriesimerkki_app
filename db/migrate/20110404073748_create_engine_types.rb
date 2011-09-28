class CreateEngineTypes < ActiveRecord::Migration
  def self.up
    create_table :engine_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :engine_types
  end
end
