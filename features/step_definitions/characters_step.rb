Given(/^I am on my character page$/) do
  visit character_path(1)
end

Given(/^there is a race in the database$/) do
  @race = Race.new({:race_name => "Dwarf",
  					:race_description => "Short, drunk, and bearded",
  					:size => "Medium",
  					:attribute_modifiers => "CON +2, WIS +2, CHA -2",
  					:default_languages => "Common, Dwarven",
  					:available_languages => "Giant, Gnome, Goblin, Orc, Terran, Undercommon"})
  @race.save
end

When(/^I choose a race$/) do
  page.select @race.race_name, :from => 'character_race_id'
  click_on 'Update Race'
end

Then(/^I should see the name of that race on the character page$/) do
  assert(page.has_content?(@race.race_name), "could not find race name #{@race.race_name}")
end
