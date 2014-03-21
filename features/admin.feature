Feature: Admin content available to admin users

  Background:
    Given I sign in
    And I am granted admin privilages

  Scenario: Page content
    When I visit the "admin" page
    Then I should see "admin page"