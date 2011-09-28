class CreateMotoModels < ActiveRecord::Migration
  def self.up
    create_table :moto_models do |t|
      t.string :name
      t.integer :moto_make_id

      t.timestamps
    end
  end

  def self.down
    drop_table :moto_models
  end
end
