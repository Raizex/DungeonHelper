When(/^I added a user$/) do
  @user = User.new({:email => "me@gmail.com", :user_name => "me", 
  					:password => "hello", :password_confirmation => "hello"})
  @user.save
end

When(/^I am on the users page$/) do
  visit '/users'
end

Then(/^I should see that user$/) do
	page.has_content?("#{@user.email}")
	page.has_content?("#{@user.user_name}")
end

When(/^I login with my account$/) do
  visit '/login'
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @user.password
  click_button 'Login'
end

Then(/^I should see my user page$/) do
	page.has_content?("#{@user.email}")
	page.has_content?("#{@user.user_name}")
  	page.has_content?('Login successful')
end
