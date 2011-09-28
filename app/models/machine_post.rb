class MachinePost < ActiveRecord::Base
image_accessor :machine_cover_image

belongs_to :machine_type
belongs_to :machine_category_section
belongs_to :machine_make_section
belongs_to :machine_model
belongs_to :machine_engine_size
belongs_to :machine_color
belongs_to :machine_color_type
belongs_to :machine_drive_type
belongs_to :machine_domicile_type
belongs_to :machine_town_type
belongs_to :machine_fuel_type














validates_presence_of :machine_type_id, :machine_category_section_id, :machine_make_section_id, :machine_model_id, :machine_engine_size_id, :machine_color_id, :machine_color_type_id, :machine_drive_type_id, :machine_domicile_type_id, :machine_town_type_id, :machine_fuel_type_id

 
def self.search(search)
  if search
    find(:all, :conditions => ['machine_engine_model LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

end

