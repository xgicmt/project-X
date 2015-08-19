class Property < ActiveRecord::Base
	belongs_to :sponsor
	has_many :propimages, :inverse_of => :property, :dependent => :destroy
#, :inverse_of => :property, :dependent => :destroy 
	has_many :leadership_team_members
	has_many :extras, :dependent => :destroy
    
    accepts_nested_attributes_for :propimages
    accepts_nested_attributes_for :extras
   # mount_uploader :image_name, ImagenameUploader
end
