class AttributeList < ActiveRecord::Base
	belongs_to :character
	self.primary_key ='id'
end