class CreateMotoCoverImageUids < ActiveRecord::Migration
  def self.up
    create_table :moto_cover_image_uids do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :moto_cover_image_uids
  end
end
