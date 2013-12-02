class Character < ActiveRecord::Base
	belongs_to :user
	has_one :description, dependent: :destroy
	has_one :race, dependent: :destroy
end
