class FeatAssignment < ActiveRecord::Base
	belongs_to :character
	belongs_to :feat
end
