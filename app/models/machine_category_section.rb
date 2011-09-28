class MachineCategorySection < ActiveRecord::Base
belongs_to :machine_type
  validates_presence_of :name, :machine_type_id


end
