class AttributeList < ActiveRecord::Base
	belongs_to :character
	self.primary_key ='id'
	# model_name.instance_variable_set(:@route_key, 'attribute_list')
end