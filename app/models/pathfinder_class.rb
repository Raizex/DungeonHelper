class PathfinderClass < ActiveRecord::Base
	has_many :characters, through: :class_levels

	#returns an array of class skills
	def classSkills
		return self.class_skills.split(%r{, *})
	end

	#returns a hash of class abilities based on level. 
	# The values for levels with mulpiple abilities are arrays
	def classAbilities
		abilitiesHash = {}
		n = 1
		abilitiesStrings = self.class_abilities.split(%r{ *, *})
		abilitiesStrings.each do |ability|
			if /\// === ability
				ability = ability.split(%r{ */ *})
			end
			abilitiesHash[n] = ability
			n += 1
		end
		return abilitiesHash
	end

	#returns a hash of base attack bonuses per level
	def baseAttackBonuses
		babHash = {}
		n = 1
		babStrings = self.base_attack_bonuses.split(%r{ *, *})
		babStrings.each do |bab|
			if /\// === bab
				bab = bab.split(%r{ */ *})
				bab = bab.collect{|s| s.to_i}
			else
				bab = bab.to_i
			end
			babHash[n] = bab
			n += 1
		end
		return babHash
	end

	#returns a hash of base saves per level. The hash is a hash of hashes; each level key
	# has a hash of saves with the keys being the abbreviation of the save and the values
	# the actual base save value. The saves are abbreviated as: fortitude = FORT, reflex = REF,
	# and WILL = will (suprise)
	def baseSaves
		baseSaveHash = {}
		n = 1
		baseSaveStrings = self.base_saves.split(%r{ *, *})
		baseSaveStrings.each do |baseSave|
			baseSave.split(%r{ */ *})
			levelHash = {}
			levelHash = {:FORT => baseSave[0].to_i, :REF => baseSave[1].to_i, :WILL => baseSave[2].to_i}
			baseSaveHash[n] = levelHash
			n += 1
		end
		return baseSaveHash
	end

end
