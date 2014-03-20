Feature: Edit the signed-in person's details

  Background:
    Given I sign in
   	When I visit the user edit page

  Scenario: Edit user
	  Then I should see "Update"

	Scenario: My Details
	  Then I should see "Mr Test"

  