class AttributeList < ActiveRecord::Base
	model_name.instance_variable_set(:@route_key, 'attribute_list')
	belongs_to :character
end