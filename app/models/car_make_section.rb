class CarMakeSection < ActiveRecord::Base
belongs_to :car_type
  validates_presence_of :name, :car_type_id

end
