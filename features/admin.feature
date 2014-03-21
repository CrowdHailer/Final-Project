Feature: Admin content available to admin users

  Background:
    Given I sign in
    And I am granted admin privilages
    @wip
  Scenario: Page content
    When I visit "admin" page
    Then i should see "admin"