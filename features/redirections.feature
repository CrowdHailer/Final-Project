Feature: Redirection from forbidden pages

	Scenario: Unsignedin users cannot see the edit page
    When I visit the "user edit" page
    Then I should see "The showcase for graduates of Makers Academy"

  Scenario: Redirection from nonexistent user pages
    When I visit the "bogus user" page
    Then I should see "The showcase for graduates of Makers Academy"