class CreateDomicileTypes < ActiveRecord::Migration
  def self.up
    create_table :domicile_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :domicile_types
  end
end
