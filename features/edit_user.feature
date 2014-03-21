Feature: Edit the signed-in person's details

  Background:
    Given I sign in
   	When I visit the "user edit" page

  Scenario: Edit user
	  Then I should see "Update"

	Scenario: My Details
	  Then I should see "Mr Test"
	  And I should see "CrowdHailer"
	  And I should see "test@example.com"
	  And I should see "my profile" image
	  And I should see "You are not yet confirmed as a maker"

	Scenario: Confirmed as a Maker
		Given I have been confirmed as a Maker
		When I visit the "user edit" page
		And I should not see "You are not yet confirmed as a maker"
		
	Scenario: Edit my details	
	  Given I fill in the following for the "user"

	     | email         |  new.email@test.com | 
	     | cohort        |  Jan15              |
	     | profile_image | joke.jpg            |
    
    And I press "Save"
    Then I should see "Updates saved"



  