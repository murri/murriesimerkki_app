class CreateMachineCoverImageNames < ActiveRecord::Migration
  def self.up
    create_table :machine_cover_image_names do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :machine_cover_image_names
  end
end
