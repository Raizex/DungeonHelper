class Race < ActiveRecord::Base
	has_many :characters

	#error for when attributeModifiers cannot parse the attribute_modifier string
	class RaceAttributeParsingError < StandardError
	end

	#Returns a hash of attribute modifiers specific to the race
	def attributeModifiers 
		attrMods = Hash.new
		attrStrings = self.attribute_modifiers.split(%r{, ?})
		attrStrings.each do |mod|
			modValue = mod.split(' ')
			modValue[0] = modValue[0].upcase
			unless (/^(DEX|CON|STR|INT|WIS|CHA|ANY)$/ === modValue[0]) && (/^(\+|\-)\d$/ === modValue[1])
				raise RaceAttributeParsingError
			end
			attrMods[modValue[0]] = modValue[1].to_i
		end
		return attrMods
	end

end
