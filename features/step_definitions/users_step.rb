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

When(/^I add a character to my account$/) do
  @character = Character.new({:name => "Hosiko",
                              :summary => "Buttspawn",
                              :campaign => "There and somewhere else again."})
  @character.user_id = @user.id
  @character.save
end

When(/^I am on my user page$/) do
  visit user_path(@user)
end

Then(/^I should see that character$/) do
  assert(page.has_content?(@character.name), "Did not have character name.")
  assert(page.has_content?(@character.summary), "Did not have character summery.")
  assert(page.has_content?(@character.campaign), "Did not have character campaign.")
end