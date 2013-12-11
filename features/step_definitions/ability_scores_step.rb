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

Then(/^should be able to choose my ability scores$/) do
	assert(page.has_css?('form#new_attribute_list'), "Did not have new attrribute list form.")
end

Then(/^I should be able to choose my ability scores$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I have created an attribute list$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I am on the attribute list page$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see that attribute list$/) do
  pending # express the regexp above with the code you wish you had
end

