Feature: Home page content when signed in

  Background: 
    Given I am on the home page 
    And I sign in

  Scenario: Public view
	  Then I should see "Full Stack"

  Scenario: Github sign-in 
    Then I should see "Sign out"