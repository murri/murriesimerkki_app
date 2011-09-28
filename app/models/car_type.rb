class CarType < ActiveRecord::Base
 has_many :car_make_section
   validates_presence_of :name

end
