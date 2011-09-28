class Type < ActiveRecord::Base
   has_many :sub_type
   validates_presence_of :name


end
