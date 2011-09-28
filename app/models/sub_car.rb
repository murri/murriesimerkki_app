class SubCar < ActiveRecord::Base
 belongs_to :car
  validates_presence_of :name, :car_id


end
