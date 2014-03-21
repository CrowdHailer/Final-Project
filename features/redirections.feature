Feature: Redirection from forbidden pages

	Scenario: Unsignedin users cannot see the edit page
	 When I visit the "user edit" page
   Then I should see "The showcase for graduates of Makers Academy"	