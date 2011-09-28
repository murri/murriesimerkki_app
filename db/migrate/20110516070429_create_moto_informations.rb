class CreateMotoInformations < ActiveRecord::Migration
  def self.up
    create_table :moto_informations do |t|
      t.text :name

      t.timestamps
    end
  end

  def self.down
    drop_table :moto_informations
  end
end
