When(/^I add a description$/) do
	@description = Description.new({:name => "Hoshiko",
								   :alignment => "LG",
								   :player => "Justin",
								   :deity => "None",
								   :homeland => "Napa",
								   :gender => "F",
								   :height => "5' 4\"",
								   :weight => "154 lbs",
								   :eyes => "Red",
								   :hair => "White"})
	@description.save
end

When(/^I am on the descriptions page$/) do
	visit '/descriptions'
end

Then(/^I should see that description$/) do
	@description.attributes.each_value do |value|
		page.has_content?("#{value}")
	end
end
