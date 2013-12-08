Feature: Ability scores can be assigned as part of the character creation process.

	As a user
	In order to create a character
	I would like to be able to assign ability scores as part
	of the character creation process.

Background:
	Given I have logged in

Scenario: Beging ability score selection
	Given I have completed the first step of the character creation process
	Then should be able to choose my ability scores