Feature: potential users should be able to create accounts and existing users can log in

	As a potential user
	in order to use the site
	I would like to create a user account
	And then log in with that account

Background:
	Given I added a user
	And I login with my account

Scenario: login as a user
	Then I should see my user page

Scenario: incorrect login info
	Given I log out
	And log in with the wrong information
	Then I should not see my user page

Scenario: view characters of user
	When I add a character to my account
	And I am on my user page
	Then I should see that character