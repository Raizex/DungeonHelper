Given(/^I have completed the first step of the character creation process$/) do
	@character = Character.new({:name => "Hosiko",
                              :summary => "Buttspawn",
                              :campaign => "There and somewhere else again.",
                              :user_id => @user.id})
	step "I am on my user page"
	step "I click on 'New Character'"
	fill_in 'character_name', with: @character.name
	fill_in 'character_summary', with: @character.summary
	fill_in 'character_campaign', with: @character.campaign
	click_button 'Create Character'
	@character = Character.find_by_name(@character.name)
end

Then(/^I should be able to choose my ability scores$/) do
	assert(page.has_css?('form#new_attribute_list'), "Did not have new attrribute list form.")
end

Given(/^I have created an attribute list$/) do
	step "I have completed the first step of the character creation process"
	@attribute_list = AttributeList.new({:character_id => @character.id,
										 :str => 8, :dex => 9,
										 :con => 10, :int => 11,
										 :wis => 12, :cha => 13})
	fill_in 'attribute_list_str', with: @attribute_list.str
	fill_in 'attribute_list_dex', with: @attribute_list.dex
	fill_in 'attribute_list_con', with: @attribute_list.con
	fill_in 'attribute_list_int', with: @attribute_list.int
	fill_in 'attribute_list_wis', with: @attribute_list.wis
	fill_in 'attribute_list_cha', with: @attribute_list.cha
	click_button 'Assign Ability Scores'
	@attribute_list = AttributeList.find_by_character_id(@attribute_list.character_id)
end

Given(/^I am on the attribute list page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see that attribute list$/) do
  pending # express the regexp above with the code you wish you had
end

