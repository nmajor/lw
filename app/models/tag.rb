class Tag < ApplicationRecord
	has_many :plant_tags
	has_many :tags, through: :plant_tags 
end
