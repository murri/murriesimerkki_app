class CreateCarCoverImageUids < ActiveRecord::Migration
  def self.up
    create_table :car_cover_image_uids do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :car_cover_image_uids
  end
end
