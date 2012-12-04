Feature: showing
  In order to signup for a movie
  As a user
  I want to register


Background:
Given an initial business

Scenario: new Showing
			Given I am on the 'new showing' page
			Then in the "title", I should see "New showing"
			When I enter "2" for "Movie ID"
		And I select "02" for "Showing Time"
			And I enter "50" for "Available seats"
			And I click "Create Showing"
			Then I should see "Showing was successfully created."

Scenario: List Showings
	      Given I am on the 'Showings' page
	      Then in the "title", I should see "Listing Showings"
	      And in the "th", I should see "Movie"
	      And in the "th", I should see "Showing Time"
	      And in the "th", I should see "Number of available seats"	
		  And in the "td", I should see "showing.movie_id"
		  And in the "td", I should see "showing_time"
		  And in the "td", I should see "50"	
	      And in the "body", I should see a link to "New Showing"


Scenario: Update Showing
	    Given I am on the 'Showings' page
		When I follow the "Edit" link for "2"
		And I change the Available seats "50" to "60"
		And I click "Update"
		Then I should see "Showing was successfully updated"
	
Scenario: Delete Showing
		Given I am on the 'Showings' page
		When I follow the "Destroy" link for "2"
		Then I should not to see "2"