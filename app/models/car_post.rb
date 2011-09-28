class CarPost < ActiveRecord::Base
image_accessor :car_cover_image  
 belongs_to :car_type
 belongs_to :car_make_section
belongs_to :car_model_section
belongs_to :car_sub_type
belongs_to :car_color
belongs_to :car_color_type
belongs_to :car_engine_size
belongs_to :car_drive_type
belongs_to :car_fuel_type
belongs_to :car_gearbox_type
belongs_to :car_domicile_type
belongs_to :car_town_type



validates_presence_of :car_cover_image, :car_type_id, :car_make_section_id, :car_model_section_id, :car_sub_type_id, :car_color_id, :car_color_type_id, :car_engine_size_id, :car_drive_type_id, :car_fuel_type_id, :car_gearbox_type_id, :car_domicile_type_id,
:car_town_type_id

def self.search(search)
  if search
    find(:all, :conditions => ['car_model LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

end
