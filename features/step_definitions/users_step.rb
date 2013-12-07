When(/^I added a user$/) do
  @password = "hello"
  @user = User.new({:email => "me@gmail.com", :user_name => "me", 
  					:password => @password, :password_confirmation => @password})
  @user.save
end

When(/^I login with my account$/) do
  visit '/login'
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @password
  click_button 'Login'
end

Then(/^I should see my user page$/) do
	assert(page.has_content?("#{@user.user_name}"), "Did not have user name.")
  assert(page.has_content?('Login successful'), "Did not login successfully.")
end

When(/^I am on my user page$/) do
  visit user_path(@user)
end

Given(/^I log out$/) do
  click_on 'Logout'
end


And(/^log in with the wrong information$/) do
  visit '/login'
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @password + "t"
  click_button 'Login'
end

Then(/^I should not see my user page$/) do
  assert(not(page.has_content?("#{@user.user_name}")), "Did have user name.")
  assert(not(page.has_content?('Login successful')), "Did login successfully.")
end
