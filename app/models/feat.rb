class Feat < ActiveRecord::Base
	has_many :characters, through: :feat_assignments

	#returns the attribute prerequisite(s) if there is one, false otherwise
	def attrPrereqs
		attrPrereqHash = {}
		prereqStrings = self.prereqs
		prereqStrings.each do |attrPrereq|
			prereqVal = attrPrereq.split(' ')
			prereqVal[0] = prereqVal[0].upcase
			if (/^(DEX|CON|STR|INT|WIS|CHA|ANY)$/ === prereqVal[0]) && (/^\d+$/ === prereqVal[1])
				attrPrereqHash[prereqVal[0]] = prereqVal[1].to_i
			end
		end
		unless attrPrereqHash.empty?
			return attrPrereqHash
		else
			return false
		end
	end

	#returns the value of the bab prereq, 0 if none
	def babPrereq
		prereqStrings = self.prereqs
		prereqStrings.each do |bab|
			bab = bab.downcase
			if (/^(base attack bonus|bab)/) === bab
				return bab.scan(/\d/).join('')
			end
		end
		return false
	end

	#returns an array of the prereqs
	def prereqs
		if self.prerequisites === nil 
			return []
		else 
			return self.prerequisites.split(%r{ *, *})
		end
	end
end
