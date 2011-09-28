class BoatMake < ActiveRecord::Base
belongs_to :boat_type
  validates_presence_of :name, :boat_type_id


end
