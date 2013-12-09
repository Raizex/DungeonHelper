class Feat < ActiveRecord::Base
	has_many :characters, through: :feat_assignments
end
