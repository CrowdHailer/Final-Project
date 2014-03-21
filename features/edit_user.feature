Feature: Edit the signed-in person's details

  Background:
    Given I sign in
   	When I visit the "user edit" page

  Scenario: Page shows my details
    Then I should see the following:
	   | Update |
	   | Mr Test |
	   | CrowdHailer |
	   | test@example.com |
     | You are not yet confirmed as a maker |
	  And I should see "my profile" image

	Scenario: Confirmed as a Maker
		Given I have been confirmed as a Maker
		When I visit the "user edit" page
		And I should not see "You are not yet confirmed as a maker"

	Scenario: Edit my details
	  Given I fill in the following for the "user"
	     | email         |  new.email@test.com |
	     | cohort        |  Jan15              |
	     | profile_image | joke.jpg            |
	     | bio 					 |	 I am a maker      |

    And I press "Save"
    Then I should see "Updates saved"



