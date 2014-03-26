Feature: Admin content available to admin users
  Background:
    Given I sign in
    And I am granted admin privilages
    And there is a confirmed maker seeking work
    And There is an uncofirmed maker

  Scenario: Page content
    When I visit the "user list" page
    Then I should see the confirmed maker
    And I should see unconfirmed maker

  Scenario: Confirm maker
  	When I visit an unconfirmed maker's profile page
  	Then I should see button "Confirm maker"
  	Then I click link "Confirm maker"
  	And I should see unconfirmed maker is now a verified maker!
