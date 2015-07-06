class Property < ActiveRecord::Base
	belongs_to :sponsor
	has_many :property_images
	
end
