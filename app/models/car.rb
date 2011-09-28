class Car < ActiveRecord::Base
image_accessor :cover_image 
config.gem 'rmagick',    :lib => 'RMagick'
config.gem 'rack-cache', :lib => 'rack/cache'
config.gem 'dragonfly',  :lib => 'dragonfly/rails/images', :source => 'http://gemcutter.org'

 belongs_to :type
  belongs_to :sub_type
  validates_presence_of :name, :type_id, :sub_type_id



end
