Feature: Home page content when signed in

  Background:
    Given I sign in

  Scenario: Github sign-in
    Then I should see "Sign Out"

  Scenario: Log out
    When I sign out
    Then I should see "Sign in with Github"
