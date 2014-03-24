Feature: Home page content

  Background:
  	Given there is a confirmed maker seeking work
    Given I visit the "home" page

  Scenario: Public view
	  Then I should see the following:
      | Full Stack |
      | Sign in with Github |
      | TestName1 |
      | The life and times of a developer |
    And I should see "users github profile" image
