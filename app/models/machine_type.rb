class MachineType < ActiveRecord::Base
has_many :machine_category_section
   validates_presence_of :name


end
