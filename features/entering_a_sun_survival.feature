Feature: Entering a sun survival
  In order to save when the sun passes a certain point
  As a user
  I want to save the time

  Scenario: Sun survival should be visible on buttons
    Given there is an entry for today
    When I am on the front page
    Then I should see "13:00" in the button within "#position1_container"
    And I should see "14:00" in the button within "#position2_container"
    And I should see "15:00" in the button within "#position3_container"
  
  Scenario: Adding a simple sun survival
    Given there is no entries
    And the time is "13:29"
    And I am on the front page
    When I press "Nu" within "#position1_container"
    Then I should be on the front page
    And I should see "13:29" in the button within "#position1_container"
    And I should see "Solens överlevnad noterad" within "#flash"