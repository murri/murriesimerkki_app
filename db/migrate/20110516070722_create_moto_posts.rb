class CreateMotoPosts < ActiveRecord::Migration
  def self.up
    create_table :moto_posts do |t|
      t.integer :vehicle_id
      t.integer :sub_vehicle_id
      t.integer :moto_make_id
      t.integer :moto_model_id
      t.string :moto_cover_image_uid
      t.string :moto_cover_image_name
      t.string :moto_registration_number
      t.string :moto_price
      t.date :moto_year_model
      t.string :moto_color_id
      t.string :moto_color_type_id
      t.string :moto_engine_type_id
      t.string :moto_engine_size_id
      t.text :moto_information
      t.string :moto_mileage
      t.string :moto_drive_type_id
      t.string :moto_user_name
      t.string :moto_user_phone
      t.string :moto_user_email
      t.integer :moto_domicile_type_id
      t.integer :moto_town_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :moto_posts
  end
end
