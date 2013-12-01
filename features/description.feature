Feature: a character sheet has a description decribing the character

	As a user
	in order to create a character
	I would like to write a general description describing my character.
	This includes things like, name, alignment, player name, deity, homeland, gender, height, weight, eye colour, and hair colour.

Scenario: create a decription
	When I add a description
	And I am on the descriptions page
	Then I should see that description