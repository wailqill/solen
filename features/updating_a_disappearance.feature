Feature: Updating a disappearance
  In order to change an status entry for disappearance
  As a user
  I want to update erroneous data

  Scenario: Update existing disappearance shows new time
    Given there is an entry for today
    And I am on the front page
    And the time is "16:28"
    When I press "Uppdatera" within "#disappearance"
    Then I should see "Solen försvann 16:28."
    And I should see "Solens bortkomst noterad" within "#flash"
