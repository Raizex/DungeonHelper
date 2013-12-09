class PathfinderClass < ActiveRecord::Base
	has_many :characters, through: :class_levels
end
