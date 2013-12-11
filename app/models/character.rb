class Character < ActiveRecord::Base
	belongs_to :user
	has_one :description, dependent: :destroy
	has_one :race
	has_one :attribute_list, dependent: :destroy
	has_many :pathfinder_classes, through: :class_levels
	has_many :feats, through: :feat_assignments
	has_many :feat_assignments

	def hasDescription?
		return self.description != nil
	end
end
