class Race < ActiveRecord::Base
	has_many :characters

	#Returns a hash of attribute modifiers specific to the race
	def attributeModifiers 
		attrMods = Hash.new
		attrStrings = self.attribute_modifiers.split(', ')
		attrStrings.each do |mod|
			modValue = mod.split(' ')
			attrMods[modValue[0]] = modValue[1]
		end
		return attrMods
	end

end
