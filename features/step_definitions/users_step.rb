When(/^I added a user$/) do
  @user = User.new({:email => "me@gmail.com", :user_name => "me", 
  					:password => "hello", :password_confirmation => "hello"})
  @user.save
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
  page.has_content?(@character.name)
  page.has_content?(@character.summary)
  page.has_content?(@character.campaign)

end