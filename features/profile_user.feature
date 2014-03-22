Feature: Show one person's details

  Background:
    Given I sign in
    And I am confirmed
    And I have added the following:
      | bio      | The life and times of a developer |
      | twitter  | @crowdhailer                      |
      | linkedin | linkedin.ch.com                   |
      | cohort   | January                           |
      
  Scenario: Show a user
  	When I visit the user profile page
	  Then I should see the following:
      | Profile                           |
      | Mr Test                           |
      | test@example.com                  |
      | CrowdHailer                       |
      | The life and times of a developer |
      | @crowdhailer                      |
      | linkedin.ch.com                   |
      | January                           |

      