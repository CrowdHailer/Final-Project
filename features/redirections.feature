Feature: Redirection from forbidden pages

  @wip
	Scenario: Unsignedin users cannot see the edit page
    When I visit the "user edit" page
    Then I should see the following:
      | The showcase for graduates of Makers Academy |
      | You must be logged in to edit profile      |

  
  Scenario: Redirection from nonexistent user pages
    When I visit the "bogus user" page
    Then I should see the following:
      | "The showcase for graduates of Makers Academy" |
      | "User profile not found"                       |
    