require "spec_helper"
require "race"

describe Race do
	it "should return a hash of ability modifiers" do
		race = Race.new(:attribute_modifiers => 'CHA +2, DEX +2, STR -2')
		race.attributeModifiers.should == {'CHA'=> 2, 'DEX' => 2, 'STR' => -2}
		race = Race.new(:attribute_modifiers => 'CHA +2,DEX +2,     STR -2')
		race.attributeModifiers.should == {'CHA'=> 2, 'DEX' => 2, 'STR' => -2}
	end
	it "should raise an error if it cannot parse the ability modifiers" do
		race = Race.new(:attribute_modifiers => 'CHA +2 BLUE +2, STR =2')
		expect { race.attributeModifiers }.to raise_error(StandardError)
	end
	it "should return an array of default languages and available languages" do
		race = Race.new(:default_languages => "Common, Elven", 
						:available_languages => "Celestial, Draconic, Gnoll, Gnome, Goblin, Orc, Sylvan")
		race.defaultLanguages.should == ["Common", "Elven"]
		race.availableLanguages.should == ["Celestial", "Draconic", "Gnoll", "Gnome", "Goblin", "Orc", "Sylvan"]
	end
end