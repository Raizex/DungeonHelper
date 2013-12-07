Feature: Characters can be created be created, edited, and destroyed from a users home page.

	As a user
	in order to select one of my characters
	I would like to see a list of my character sheets under my account that contains a name, a short summary, and the name of the campaign that the character is assigned to.

Background:
	Given I have logged in
	And I am on my user page

Scenario: Beggining character creation
	And I click on 'New Character'
	Then I should see the new character form

Scenario: Creating a new character
	When I create a new character
	And I am on my user page
	Then I should see that character