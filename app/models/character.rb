class Character < ActiveRecord::Base
	belongs_to :user
	has_one :description, dependent: :destroy
	has_one :race, dependent: :destroy
	has_one :attribute_list, dependent: :destroy

	def hasRace?
		if self.race
			return true
		else
			false
		end
	end
end