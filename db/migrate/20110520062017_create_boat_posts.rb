class CreateBoatPosts < ActiveRecord::Migration
  def self.up
    create_table :boat_posts do |t|
      t.integer :boat_type_id
      t.integer :boat_make_id
      t.integer :boat_sub_type_id
      t.string :boat_cover_image_uid
      t.string :boat_cover_image_name
      t.string :boat_model
      t.date :boat_year_model
      t.string :boat_asking_price
      t.integer :boat_body_material_id
      t.integer :boat_color_id
      t.string :boat_length
      t.string :boat_height
      t.string :boat_width
      t.string :boat_weight
      t.string :boat_draught
      t.integer :boat_engine_make_id
      t.date :boat_engine_year_model
      t.integer :boat_engine_fuel_type_id
      t.text :boat_note
      t.string :boat_total_owner
      t.string :boat_storage_equipment
      t.string :boat_user_name
      t.string :boat_user_phone
      t.string :boat_user_email
      t.integer :boat_domicile_type_id
      t.integer :boat_town_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_posts
  end
end
