Feature: Home page content
	
  Background: 
  	Given there is a confirmed maker
    Given I visit the "home" page
  	@wip	
  Scenario: Public view
	  Then I should see the following:
      | Full Stack |
      | Sign in with Github |
      | TestName1 |
  @wip
  Scenario: View user image
  	Then I should see "users github profile" image
    And I should see user bio

  	