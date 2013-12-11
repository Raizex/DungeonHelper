require "spec_helper"
require "pathfinder_class"

describe PathfinderClass do

	it "should return a list of its class skills" do
		pClass = PathfinderClass.new(:class_skills => "Climb, Craft, Handle Animal, Intimidate, Knowledge (dungeoneering), Knowledge (engineering), Profession, Ride, Survival, Swim")
		pClass.classSkills.should == ['Climb', 'Craft', 'Handle Animal', 'Intimidate', 'Knowledge (dungeoneering)', 'Knowledge (engineering)', 'Profession', 'Ride', 'Survival', 'Swim']
	end

	it "should return a hash of class abilities with the key being the level" do
		pClass = PathfinderClass.new(:class_abilities => "bonus feat,  bonus feat /  bravery, armor training, bonus feat, weapon training, bonus feat, armor training, bonus feat, weapon training, bonus feat, armor training, bonus feat, weapon training, bonus feat, armor training, bonus feat, weapon training, bonus feat, armor mastery, bonus feat/weapon mastery")
		pClass.classAbilities.should == {1 => 'bonus feat', 2 => ['bonus feat', 'bravery'], 3 => 'armor training', 4 => 'bonus feat', 5 => 'weapon training', 6 => 'bonus feat', 7 => 'armor training', 8 => 'bonus feat', 9 => 'weapon training', 10 => 'bonus feat', 11 => 'armor training', 12 => 'bonus feat', 13 => 'weapon training', 14 => 'bonus feat', 15 => 'armor training', 16 => 'bonus feat', 17 => 'weapon training', 18 => 'bonus feat', 19 => 'armor mastery', 20 => ['bonus feat', 'weapon mastery']}
	end

	it "should return a hash of base attack bonuses per level" do
		pClass = PathfinderClass.new(:base_attack_bonuses => "1, 2, 3, 4, 5, 6/1, 7/2, 8/3, 9/4, 10/5, 11/6/1, 12/7/2, 13/8/3, 14/9/4, 15/10/5, 16/11/6/1, 17/12/7/2, 18/14/8/3, 19/14/9/4, 20/15/10/5")
		pClass.baseAttackBonuses.should == {1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => [6,1], 7 => [7,2], 8 => [8,3], 9 => [9,4], 10 => [10,5], 11 => [11,6,1], 12 => [12,7,2], 13 => [13,8,3], 14 => [14,9,4], 15 => [15,10,5], 16 => [16,11,6,1], 17 => [17,12,7,2], 18 => [18,14,8,3], 19 => [19,14,9,4], 20 => [20,15,10,5]}
	end

	it "should return a hash of base saves per level" do
		pClass = PathfinderClass.new(:base_saves => "2/0/0, 3/0/0, 3/1/1, 4/1/1, 4/1/1, 5/2/2")
		pClass.baseSaves.should == {1=>{:FORT=>2, :REF=>0, :WILL=>0}, 
		                            2=>{:FORT=>3, :REF=>0, :WILL=>0}, 
		                            3=>{:FORT=>3, :REF=>0, :WILL=>1}, 
		                            4=>{:FORT=>4, :REF=>0, :WILL=>1}, 
		                            5=>{:FORT=>4, :REF=>0, :WILL=>1}, 
		                            6=>{:FORT=>5, :REF=>0, :WILL=>2}}
	end
end