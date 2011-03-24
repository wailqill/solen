Feature: Manage statuses in a list
  In order to see previous sun deaths and survivals
  As a user
  I want to see and navigate a list of them all

  Scenario: Go to the list of statuses
    Given I am on the front page
    When I follow "Alla" within "header"
    Then I should be on the statuses page

