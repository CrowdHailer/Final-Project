Feature: Home page content

  Background:
  	Given there is a confirmed maker
    Given I visit the "home" page

  Scenario: Public view
	  Then I should see "Full Stack"

  Scenario: Github sign-in
    Then I should see "Sign in with Github"

  Scenario: Public view
	  Then I should see the following:
      | Full Stack |
      | Sign in with Github |
      | TestName1 |
      | The life and times of a developer |

  Scenario: list all
    Then I should see "List all"

  Scenario: View user image
  	Given I should see "users github profile" image
  	And I should see the following:
      | The life and times of a developer|
      | TestName1 |

  	Then I should see "users github profile" image
