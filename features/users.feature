Feature: potential users should be able to create accounts and existing users can log in

	As a potential user
	in order to use the site
	I would like to create a user account
	And then log in with that account

Background:
	Given I added a user

Scenario: create a user
	And I am on the users page
	Then I should see that user

Scenario: login as a user
	When I login with my account
	Then I should see my user page