Feature: List of all people content

  Background:
    Given there is a confirmed maker seeking work
    Given there is a confirmed maker not seeking work
    Given There is an uncofirmed maker
    When I visit the "user list" page

  Scenario: Show list
	  Then I should see "All Makers, graduates and current students"

  Scenario: Show only confirmed makers
    Then I should see the confirmed maker
    And I should not see the unconfirmed maker

  Scenario: Show only confirmed makers seeking work
    Then I should see "Show makers seeking work" button

  Scenario: Clicking the button
    When I click button "Show makers seeking work"
    Then I should see makers seeking work