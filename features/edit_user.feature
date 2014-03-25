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
     | Twitter |                            
     | Linkedin |
     | Stackoverflow |               
     | Bio |        

	  And I should see "my profile" image

	Scenario: Confirmed as a Maker
		Given I have been confirmed as a Maker
		When I visit the "user edit" page
		And I should not see "You are not yet confirmed as a maker"

	Scenario: Edit my details
	  Given I fill in the following for the "user"
	     | email         |  new.email@test.com        |
       | profile_image |  joke.jpg                  |
       | twitter       |   @youraccount             |
       | linkedin      |   yourcount.com            |
       | stackoverflow |   colinStack               |
       | bio           |   I am a maker             |
       | website       |   nervous.fish.org         |
       | blog          |   Iwasneverabeetroot.co.uk |
    And I choose "May 2014" from "user_cohort"
    And I press "Save"
    Then I should see "Updates saved"
    And I should see "I am a maker" for the user