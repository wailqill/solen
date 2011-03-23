Feature: Entering a sun survival
  In order to save when the sun passes a certain point
  As a user
  I want to save the time

  Scenario: Adding a simple sun survival
    Given I am on the front page
    And there is no entries
    And the time is "13:29"
    When I press "Nu" within "#position1_container"
    Then I should be on the front page
    And I should see "13:29" in the button within "#position1_container"
    And I should see "Solens överlevnad noterad" within "#flash"
  
  
  
