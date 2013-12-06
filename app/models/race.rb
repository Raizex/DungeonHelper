class Race < ActiveRecord::Base
	belongs_to :character

	def attributeModifiers 
		attrMods = Hash.new
		attrStrings = @attribute_modifiers.split(', ')
		attrStrings.each do |mod|
			modValue = mod.split(' ')
			attrMods[modValue[0]] = modValue[1]
		end
		return attrMods
	end

end
