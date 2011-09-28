class CreateMotoCoverImageNames < ActiveRecord::Migration
  def self.up
    create_table :moto_cover_image_names do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :moto_cover_image_names
  end
end
