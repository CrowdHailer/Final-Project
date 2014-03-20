Feature: Edit the signed-in person's details

  Background:
    Given I sign in
   	When I visit the user edit page

  Scenario: Edit user
	  Then I should see "Update"

  @wip
	Scenario: My Details
	  Then I should see "Mr Test"
	  And I should see "Billybob"
	  And I should see "test@example.com"
	  And I should see my profile picture

  