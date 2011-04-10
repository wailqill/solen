Feature: Manage sun_births
  In order to track when the sun is available for use in the balcony
  The user
  wants want to save the time when it appears
  
  Scenario: Register new sun birth
    Given there is no entries
    And the time is "13:04"
    And I am on the front page
    When I press "Upp"
    Then I should be on the front page
    And I should see "13:04" in a button within "#birth_container"
    And I should see "Solens födelse noterad" within "#flash"
