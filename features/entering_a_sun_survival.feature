Feature: Entering a sun survival
  In order to save when the sun passes a certain point
  As a user
  I want to save the time

  Scenario: Sun survival should be visible on buttons
    Given there is an entry for today
    When I am on the front page
    Then I should see "13:00" in a button within "#position1_container"
    And I should see "14:00" in a button within "#position2_container"
    And I should see "15:00" in a button within "#position3_container"
  
  Scenario: Adding a simple sun survival
    Given there is no entries
    And the time is "13:29"
    And I am on the front page
    When I press "Nu" within "#position1_container"
    Then I should be on the front page
    And I should see "13:29" in a button within "#position1_container"
    And I should see "Solens överlevnad noterad" within "#flash"
  
  Scenario: Setting survival should also set date
    Given there is no entries
    And the time is "2011-11-11 11:11"
    And I am on the front page
    When I press "Nu" within "#position1_container"
    And I follow "Alla"
    Then I should see the following statuses:
      | Datum            | Död | Tak 1 | Tak 2 | Tak 3 |
      | 11 november 2011 | -   | 11:11 | -     | -     |
