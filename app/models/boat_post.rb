class BoatPost < ActiveRecord::Base
image_accessor :boat_cover_image
 belongs_to :boat_type
belongs_to :boat_body_material

 belongs_to :boat_make
 belongs_to :boat_sub_type
  belongs_to :boat_color
 belongs_to :boat_engine_make
 belongs_to :boat_engine_fuel_type
 belongs_to :boat_domicile_type
 belongs_to :boat_town_type


 validates_presence_of :boat_type_id, :boat_body_material_id, :boat_make_id, :boat_sub_type_id, :boat_color_id, :boat_engine_make_id, :boat_engine_fuel_type_id, 
:boat_domicile_type_id, :boat_town_type_id

def self.search(search)
  if search
    find(:all, :conditions => ['boat_model LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

end
