class Window < ActiveRecord::Base

 belongs_to :car
  belongs_to :sub_car
  validates_presence_of :name, :car_id, :sub_car_id

end
