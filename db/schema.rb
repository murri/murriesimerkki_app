# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110520085642) do

  create_table "boat_asking_prices", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_body_materials", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_colors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_cover_image_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_cover_image_uids", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_domicile_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_draughts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_engine_fuel_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_engine_makes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_engine_year_models", :force => true do |t|
    t.date     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_heights", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_lengths", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_makes", :force => true do |t|
    t.string   "name"
    t.integer  "boat_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_models", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_notes", :force => true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_posts", :force => true do |t|
    t.integer  "boat_type_id"
    t.integer  "boat_make_id"
    t.integer  "boat_sub_type_id"
    t.string   "boat_cover_image_uid"
    t.string   "boat_cover_image_name"
    t.string   "boat_model"
    t.date     "boat_year_model"
    t.string   "boat_asking_price"
    t.integer  "boat_body_material_id"
    t.integer  "boat_color_id"
    t.string   "boat_length"
    t.string   "boat_height"
    t.string   "boat_width"
    t.string   "boat_weight"
    t.string   "boat_draught"
    t.integer  "boat_engine_make_id"
    t.date     "boat_engine_year_model"
    t.integer  "boat_engine_fuel_type_id"
    t.text     "boat_note"
    t.string   "boat_total_owner"
    t.string   "boat_storage_equipment"
    t.string   "boat_user_name"
    t.string   "boat_user_phone"
    t.string   "boat_user_email"
    t.integer  "boat_domicile_type_id"
    t.integer  "boat_town_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_storage_equipments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_sub_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_total_owners", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_town_types", :force => true do |t|
    t.string   "name"
    t.integer  "boat_domicile_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_user_emails", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_user_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_user_phones", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_weights", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_widths", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boat_year_models", :force => true do |t|
    t.date     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_accelerations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_color_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_colors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_cover_image_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_cover_image_uids", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_domicile_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_drive_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_emissions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_engine_sizes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_fuel_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_gearbox_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_informations", :force => true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_make_sections", :force => true do |t|
    t.string   "name"
    t.integer  "car_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_mileages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_model_sections", :force => true do |t|
    t.string   "name"
    t.integer  "car_make_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_posts", :force => true do |t|
    t.integer  "car_type_id"
    t.integer  "car_make_section_id"
    t.integer  "car_model_section_id"
    t.string   "car_cover_image_uid"
    t.string   "car_cover_image_name"
    t.string   "car_sub_type_id"
    t.date     "car_year_model"
    t.string   "car_color_id"
    t.string   "car_color_type_id"
    t.string   "car_price"
    t.text     "car_information"
    t.string   "car_total_owner"
    t.string   "car_mileage"
    t.string   "car_engine_size_id"
    t.string   "car_drive_type_id"
    t.string   "car_fuel_type_id"
    t.string   "car_gearbox_type_id"
    t.string   "car_power"
    t.string   "car_emission"
    t.string   "car_top_speed"
    t.string   "car_acceleration"
    t.string   "car_weight"
    t.string   "car_user_name"
    t.string   "car_user_phone"
    t.string   "car_user_email"
    t.integer  "car_domicile_type_id"
    t.integer  "car_town_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_powers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_prices", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_sub_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_top_speeds", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_total_owners", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_town_types", :force => true do |t|
    t.string   "name"
    t.integer  "car_domicile_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_user_emails", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_user_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_user_phones", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_weights", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "car_year_models", :force => true do |t|
    t.date     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_asking_prices", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_cover_image_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_cover_image_uids", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_dead_weights", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_domicile_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_gross_weights", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_informations", :force => true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_lenghts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_make_sections", :force => true do |t|
    t.string   "name"
    t.integer  "caravan_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_mileages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_model_sections", :force => true do |t|
    t.string   "name"
    t.integer  "caravan_make_section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_posts", :force => true do |t|
    t.integer  "caravan_type_id"
    t.integer  "caravan_make_section_id"
    t.integer  "caravan_model_section_id"
    t.string   "caravan_cover_image_uid"
    t.string   "caravan_cover_image_name"
    t.date     "caravan_year_model"
    t.string   "caravan_asking_price"
    t.string   "caravan_total_owner"
    t.string   "caravan_length"
    t.string   "caravan_dead_weight"
    t.string   "caravan_gross_weigt"
    t.text     "caravan_information"
    t.string   "caravan_mileage"
    t.string   "caravan_user_name"
    t.string   "caravan_user_phone"
    t.string   "caravan_user_email"
    t.integer  "caravan_domicile_type_id"
    t.integer  "caravan_town_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_total_owners", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_town_types", :force => true do |t|
    t.string   "name"
    t.integer  "caravan_domicile_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_user_emails", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_user_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_user_phones", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "caravan_year_models", :force => true do |t|
    t.date     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "color_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cover_image_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cover_image_uids", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_files", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dogs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "domicile_type_sections", :force => true do |t|
    t.string   "name"
    t.integer  "boats_position_town_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "domicile_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "draughts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drive_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "engine_sizes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "engine_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "focusing_sections", :force => true do |t|
    t.string   "name"
    t.integer  "industry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fuel_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galleries", :force => true do |t|
    t.string   "name"
    t.integer  "section_id"
    t.integer  "sub_section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gearbox_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "heights", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "industries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lengths", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_category_sections", :force => true do |t|
    t.string   "name"
    t.integer  "machine_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_color_types", :force => true do |t|
    t.string   "name"
    t.integer  "Machine_color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_colors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_cover_image_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_cover_image_uids", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_domicile_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_drive_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_engine_models", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_engine_sizes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_fuel_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_gross_weights", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_informations", :force => true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_make_sections", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_mileages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_models", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_posts", :force => true do |t|
    t.integer  "machine_type_id"
    t.integer  "machine_category_section_id"
    t.integer  "machine_make_section_id"
    t.string   "machine_model"
    t.string   "machine_cover_image_uid"
    t.string   "machine_cover_image_name"
    t.string   "machine_engine_model"
    t.string   "machine_price"
    t.string   "machine_gross_weight"
    t.date     "machine_year_model"
    t.string   "machine_engine_size_id"
    t.string   "machine_mileage"
    t.string   "machine_color_id"
    t.string   "machine_color_type_id"
    t.string   "machine_fuel_type_id"
    t.string   "machine_drive_type_id"
    t.text     "machine_information"
    t.string   "machine_total_owner"
    t.string   "machine_user_name"
    t.string   "machine_user_phone"
    t.string   "machine_user_email"
    t.integer  "machine_domicile_type_id"
    t.integer  "machine_town_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_prices", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_total_owners", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_town_types", :force => true do |t|
    t.string   "name"
    t.integer  "machine_domicile_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_user_emails", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_user_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_user_phones", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_year_models", :force => true do |t|
    t.date     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "make_sections", :force => true do |t|
    t.string   "name"
    t.integer  "type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", :force => true do |t|
    t.string   "name"
    t.integer  "type_id"
    t.integer  "sub_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_color_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_colors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_cover_image_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_cover_image_uids", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_domicile_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_drive_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_engine_sizes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_engine_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_informations", :force => true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_makes", :force => true do |t|
    t.string   "name"
    t.integer  "sub_vehicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_mileages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_models", :force => true do |t|
    t.string   "name"
    t.integer  "moto_make_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_posts", :force => true do |t|
    t.integer  "vehicle_id"
    t.integer  "sub_vehicle_id"
    t.integer  "moto_make_id"
    t.integer  "moto_model_id"
    t.string   "moto_cover_image_uid"
    t.string   "moto_cover_image_name"
    t.string   "moto_registration_number"
    t.string   "moto_price"
    t.date     "moto_year_model"
    t.string   "moto_color_id"
    t.string   "moto_color_type_id"
    t.string   "moto_engine_type_id"
    t.string   "moto_engine_size_id"
    t.text     "moto_information"
    t.string   "moto_mileage"
    t.string   "moto_drive_type_id"
    t.string   "moto_user_name"
    t.string   "moto_user_phone"
    t.string   "moto_user_email"
    t.integer  "moto_domicile_type_id"
    t.integer  "moto_town_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_prices", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_registration_numbers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_town_types", :force => true do |t|
    t.string   "name"
    t.integer  "moto_domicile_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_user_emails", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_user_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_user_phones", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moto_year_models", :force => true do |t|
    t.date     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", :force => true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "vehicle"
    t.string   "make"
    t.string   "model"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prices", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registration_numbers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "storage_equipments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_cars", :force => true do |t|
    t.string   "name"
    t.integer  "car_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_sections", :force => true do |t|
    t.string   "name"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_types", :force => true do |t|
    t.string   "name"
    t.integer  "type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_vehicles", :force => true do |t|
    t.string   "name"
    t.integer  "vehicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subtype_sections", :force => true do |t|
    t.string   "name"
    t.integer  "type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "total_owners", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "town_types", :force => true do |t|
    t.string   "name"
    t.integer  "domicile_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_sections", :force => true do |t|
    t.string   "name"
    t.integer  "vehicle_class_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uploads", :force => true do |t|
    t.string   "description"
    t.integer  "dog_id"
    t.string   "photo_file_name"
    t.integer  "photo_file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "vehicle_classes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weights", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "widths", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "windows", :force => true do |t|
    t.string   "name"
    t.integer  "car_id"
    t.integer  "sub_car_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "year_models", :force => true do |t|
    t.date     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
