# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

races = [{:race_name => "Dwarf",
		  :race_description => "Dwarves are a stoic but stern race, ensconced in cities carved from the hearts of mountains and fiercely determined to repel the depredations of savage races like orcs and goblins.",
		  :size => "Medium",
		  :attribute_modifiers => "CON +2, WIS +2, CHA -2",
		  :default_languages => "Common, Dwarven",
		  :available_languages => "Giant, Gnome, Goblin, Orc, Terran, Undercommon"},
		 {:race_name => "Elf",
		  :race_description => "The long-lived elves are children of the natural world, similar in many superficial ways to fey creatures, though with key differences.",
		  :size => "Medium",
		  :attribute_modifiers => "DEX +2, INT +2, CON -2",
		  :default_languages => "Common, Elven",
		  :available_languages => "Celestial, Draconic, Gnoll, Gnome, Goblin, Orc, Sylvan"},
  	 ]

classes = [{:class_name => "Fighter",
    		:hit_dice => "d10",
    		:weapon_proficiencies => "all martial, all simple",
    		:armor_proficiencies => "all",
    		:class_skills => "Climb, Craft, Handle Animal, Intimidate, Knowledge (dungeoneering), Knowledge (engineering), Profession, Ride, Survival, Swim",
    		:class_abilities => "bonus feat, bonus feat/bravery, armor training, bonus feat, weapon training, bonus feat, armor training, bonus feat, weapon training, bonus feat, armor training, bonus feat, weapon training, bonus feat, armor training, bonus feat, weapon training, bonus feat, armor mastery, bonus feat/weapon mastery",
    		:base_attack_bonuses => "1, 2, 3, 4, 5, 6/1, 7/2, 8/3, 9/4, 10/5, 11/6/1, 12/7/2, 13/8/3, 14/9/4, 15/10/5, 16/11/6/1, 17/12/7/2, 18/14/8/3, 19/14/9/4, 20/15/10/5",
    		:base_saves => "2/0/0, 3/0/0, 3/1/1, 4/1/1, 4/1/1, 5/2/2, 5/2/2, 6/2/2, 6/3/3, 7/3/3, 7/3/3, 8/4/4, 8/4/4, 9/4/4, 9/5/5, 10/5/5, 10/5/5, 11/6/6, 11/6/6, 12/6/6",
    		:role => "Fighters excel at combat—defeating their enemies, controlling the flow of battle, and surviving such sorties themselves. While their specific weapons and methods grant them a wide variety of tactics, few can match fighters for sheer battle prowess.",
    		:available_alignments => "Any",
    		:starting_wealth => "5d6 x 10 gp",
    		:base_skill_ranks_per_level => "2",
    		:class_spells_per_day => nil,
    		:spell_list_type => nil,
    		:bonus_languages => nil,
    		:miscelaneous_features => nil}]

feats = [{:name => "Power Attack",
	      :feat_types => "G, C",
	      :description => "Trade melee attack bonus for damage",
	      :prerequisites => "STR 13, base attack bonus +1",
	      :prerequisite_feats => nil,
	      :link => "http://www.d20pfsrd.com/feats/combat-feats/power-attack-combat---final"},
	     # {:name => "",
	     #  :type => "",
	     #  :description => "",
	     #  :prerequisites => "",
	     #  :prerequisite_feats => "",
	      #  :link => ""}
	      {:name => "Cleave",
	      :feat_types => "G, C",
	      :description => "Make an additional Attack if the first one hits",
	      :prerequisites => nil,
	      :prerequisite_feats => "Power Attack",
	      :link => "http://www.d20pfsrd.com/feats/combat-feats/cleave-combat"},
	      
	      {:name => "Great Cleave",
	      :feat_types => "G, C",
	      :description => "Make an additional Attack after each attack",
	      :prerequisites => "base attack bonus +6",
	      :prerequisite_feats => "Power Attack",
	      :link => "http://www.d20pfsrd.com/feats/combat-feats/great-cleave-combat---final"},
	      
	      {:name => "Improved Bull Rush",
	      :feat_types => "G, C",
	      :description => "+2 bonus on bull rush attempts, no attack of opportunity",
	      :prerequisites => nil,
	      :prerequisite_feats => "Power Attack",
	      :link => "http://www.d20pfsrd.com/feats/combat-feats/improved-bull-rush-combat---final"},
	      
	      {:name => "Greater Bull Rush",
	      :feat_types => "G, C",
	      :description => "Enemies you bull rush provoke attacks of opportunity",
	      :prerequisites => nil,
	      :prerequisite_feats => "Power Attack, Improved Bull Rush",
	      :link => "http://www.d20pfsrd.com/feats/combat-feats/greater-bull-rush-combat---final"},
	      
	      {:name => "unseat",
	      :feat_types => "G, C",
	      :description => "Knock enemies from thier mounts",
	      :prerequisites => nil,
	      :prerequisite_feats => "Power Attack, Improved Bull Rush, Mounted Combat",
	      :link => "http://www.d20pfsrd.com/feats/combat-feats/unseat-combat---final"},
	      
	      
	      {:name => "Improved Drag",
	      :feat_types => "G, C",
	      :description => "+2 bonus on drag attempts, no attack of opportunity",
	      :prerequisites => nil,
	      :prerequisite_feats => "Power Attack",
	      :link => "http://www.d20pfsrd.com/feats/combat-feats/improved-drag-combat---final"},
	      
	      {:name => "Greater Drag",
	      :feat_types => "G, C",
	      :description => "Enemies you drag provoke attacks of opportunity",
	      :prerequisites => "Base attack bonus +6",
	      :prerequisite_feats => "Power Attack, Improved Drag",
	      :link => "http://www.d20pfsrd.com/feats/combat-feats/greater-drag-combat---final"},
	      
	      
	      {:name => "Improved Overrun",
	      :feat_types => "G, C",
	      :description => "+2 bonus on overrun attempts, no attack of opportunity",
	      :prerequisites => nil,
	      :prerequisite_feats => "Power Attack",
	      :link => "http://www.d20pfsrd.com/feats/combat-feats/improved-overrun-combat---final"},
	      
	      {:name => "Greater Overrun",
	      :feat_types => "G, C",
	      :description => "Enemies you overrun provoke attacks of opportunity",
	      :prerequisites => "Base attack bonus +6",
	      :prerequisite_feats => "Power Attack, Improved Overrun",
	      :link => "http://www.d20pfsrd.com/feats/combat-feats/greater-overrun-combat---final"},
	      
	      {:name => "Improved Sunder",
	      :feat_types => "G, C",
	      :description => "+2 bonus on sunder attempts, no attack of opportunity",
	      :prerequisites => nil,
	      :prerequisite_feats => "Power Attack",
	      :link => "http://www.d20pfsrd.com/feats/combat-feats/improved-sunder-combat---final"},
	      
	      {:name => "Greater Overrun",
	      :feat_types => "G, C",
	      :description => "Damage from sunder transfers to your enemy",
	      :prerequisites => "Base attack bonus +6",
	      :prerequisite_feats => "Power Attack, Improved Sunder",
	      :link => "http://www.d20pfsrd.com/feats/combat-feats/greater-sunder-combat---final"},
	      
	  ]


races.each do |race|
  unless Race.exists?(race_name: race[:race_name])
  	Race.create!(race)
  end
end

classes.each do |pclass|
	unless PathfinderClass.exists?(class_name: pclass[:class_name])
		PathfinderClass.create!(pclass)
	end
end

feats.each do |feat|
	unless Feat.exists?(name: feat[:name])
		Feat.create!(feat)
	end
end
