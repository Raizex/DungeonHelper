# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

races = [{:race_name => "Dwarf",
		  :race_description => "Dwarves are a stoic but stern race, 
		  					  ensconced in cities carved from the 
		  					  hearts of mountains and fiercely determined 
		  					  to repel the depredations of savage races like 
		  					  orcs and goblins.",
		  :size => "Medium",
		  :attribute_modifiers => "CON +2, WIS +2, CHA -2",
		  :default_languages => "Common, Dwarven",
		  :available_languages => "Giant, Gnome, Goblin, Orc, Terran, Undercommon"},
		 {:race_name => "Elf",
		  :race_description => "The long-lived elves are children of 
		  						the natural world, similar in many superficial 
		  						ways to fey creatures, though with key differences.",
		  :size => "Medium",
		  :attribute_modifiers => "DEX +2, INT +2, CON -2",
		  :default_languages => "Common, Elven",
		  :available_languages => "Celestial, Draconic, Gnoll, Gnome, Goblin, Orc, Sylvan"},
  	 ]

races.each do |race|
  Race.create!(race)
end