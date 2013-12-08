Feature: a character page will show the things that make up that character, including description, ability scores, skill list, race, class, etc.

	As a user,
	So that I can view the attributes that make up my character,
	I would like to view a page devoted to my character that shows those attributes

Background:
	Given I added a user
	And there is a race in the database
	And I login with my account
	And I create a new character
	And I am on my character page

Scenario: See the race once chosen
	Given I am on my character page
	When I choose a race
	Then I should see the name of that race on the character page