class SubType < ActiveRecord::Base
 belongs_to :type
  validates_presence_of :name, :type_id

end
