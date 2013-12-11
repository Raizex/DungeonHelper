Feature: Ability scores can be assigned as part of the character creation process.

	As a user
	In order to create a character
	I would like to be able to assign ability scores as part
	of the character creation process.

Background:
	Given I have logged in
	And I have completed the first step of the character creation process

Scenario: Beginning ability score selection
	Then I should be able to choose my ability scores

Scenario: Creating an attribute list 
	Given I have created an attribute list
	And I am on the attribute list page
	Then I should see that attribute list 
