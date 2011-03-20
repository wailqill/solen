Feature: Adding an entry
  In order to track the suns movement
  As a user
  I want to be able to add entries for when the sun is blocked

  Scenario: Simplest entry for when the sun is disappearing
    Given I am on the front page
    And there is no entries
    When I press "Solen borta"
    Then I should see "Solens bortkomst noterad" within "#flash"
    And I should be on the front page
  
  
  
