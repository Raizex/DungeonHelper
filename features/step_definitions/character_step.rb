Given(/^I have logged in$/) do
	step "I added a user"
	step "I login with my account"
end

When(/^I create a new character$/) do
	step "I have completed the first step of the character creation process"
end

Then(/^I should see that character$/) do
  assert(page.has_content?(@character.name), "Did not have character name.")
  assert(page.has_content?(@character.summary), "Did not have character summery.")
  assert(page.has_content?(@character.campaign), "Did not have character campaign.")
end

When(/^I click on 'New Character'$/) do
	click_on 'New Character'
end

Then(/^I should see the new character form$/) do
	assert(page.has_css?('form#new_character'), "Did not have new character form.")
end