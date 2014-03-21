Feature: Show one person's details

  Background:
    Given I sign in
    And I am confirmed
    
  Scenario: Show a user
  	When I visit the user profile page
	  Then I should see "Profile"

  