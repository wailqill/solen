Feature: Adding an entry
  In order to track the suns movement
  As a user
  I want to be able to add entries for when the sun is blocked
  
  Background:
    Given I am on the front page
    And there is no entries
  
  Scenario: Simple addition should show front page
    When I press "Solen borta"  
    Then I should be on the front page
  
  Scenario: Simple addition should show flash notice
    When I press "Solen borta"  
    Then I should see "Solens bortkomst noterad" within "#flash"

  Scenario: Simple addition should show disappearing time
    Given the time is "11:05"
    When I press "Solen borta"
    Then I should see "Solen försvann 11:05."
  
  
  