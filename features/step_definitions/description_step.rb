When(/^I add a description$/) do
	@description = Description.new({:alignment => "LG",
								   :player => "Justin",
								   :deity => "None",
								   :homeland => "Napa",
								   :gender => "F",
								   :height => "5' 4\"",
								   :weight => "154 lbs",
								   :eyes => "Red",
								   :hair => "White",
								   :character_id => @character.id})
	@description.save
end

Then(/^I should see the description on the character page$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I remove a description$/) do
  @description.delete
end

Then(/^I should not see it on the character page$/) do
  pending # express the regexp above with the code you wish you had
end


When(/^I am on the descriptions page$/) do
	visit '/descriptions'
end

Then /^I should (.*) that description on the character page$/ do |seen|
	visit "/characters/#{@character.id}"
	@description.attributes.each do |key, value|
		if !['id', 'character_id', 'created_at', 'updated_at'].include? key
			if seen == "see"
				assert(page.has_content?("#{value}"), "could not find #{key}: #{value}")
			else 
				assert(!page.has_content?("#{value}"), "Found #{key}: #{value}")
			end
		end
	end
end
