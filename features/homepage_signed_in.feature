Feature: Home page content when signed in

  Background:
    Given there is a confirmed maker
    Given I visit the "home" page
    And I sign in

  Scenario: Public view
	  Then I should see "Full Stack"

  Scenario: Log out
    When I sign out
    Then I should see "Sign in with Github"

  Scenario: Github sign-in
    Then I should see "Sign out"