class Character < ActiveRecord::Base
	belongs_to :user
	has_one :description, dependent: :destroy
	has_one :race
	has_one :attribute_list, dependent: :destroy

	def hasDescription?
		return self.description != nil
	end
end
