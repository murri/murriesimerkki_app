class CreateCarPosts < ActiveRecord::Migration
  def self.up
    create_table :car_posts do |t|
add_column :car_posts, :cover_image_uid, :string
      t.integer :car_type_id
      t.integer :car_make_section_id
      t.integer :car_model_section_id
      t.string :car_cover_image_uid
      t.string :car_cover_image_name
      t.string :car_sub_type_id
      t.date :car_year_model
      t.string :car_color_id
      t.string :car_color_type_id
      t.string :car_price
      t.text :car_information
      t.string :car_total_owner
      t.string :car_mileage
      t.string :car_engine_size_id
      t.string :car_drive_type_id
      t.string :car_fuel_type_id
      t.string :car_gearbox_type_id
      t.string :car_power
      t.string :car_emission
      t.string :car_top_speed
      t.string :car_acceleration
      t.string :car_weight
      t.string :car_user_name
      t.string :car_user_phone
      t.string :car_user_email
      t.integer :car_domicile_type_id
      t.integer :car_town_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :car_posts
  end
end
