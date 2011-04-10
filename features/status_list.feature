Feature: Manage statuses in a list
  In order to see previous sun deaths and survivals
  As a user
  I want to see and navigate a list of them all

  Scenario: Go to the list of statuses
    Given I am on the front page
    When I follow "Alla" within "header"
    Then I should be on the statuses page

  Scenario: List of statuses should show all in system
    Given the time is "1977-04-13 08:12"
    And the following statuses:
      | date       | birth | disappeared_at | position1 | position2 | position3 |
      | 1977-04-13 |       | 04:11          | 05:12     | 06:13     | 07:14     |
      | 1977-04-12 | 15:15 | 04:11          | 05:12     | 06:13     | 07:14     |
      | 1977-04-11 | 16:16 | 06:22          |           |           |           |
    When I go to the statuses page
    Then I should see the following statuses:
      | Datum         | Födelse | Död   | Tak 1 | Tak 2 | Tak 3 |
      | 13 april 1977 | -       | 04:11 | 05:12 | 06:13 | 07:14 |
      | 12 april 1977 | 15:15   | 04:11 | 05:12 | 06:13 | 07:14 |
      | 11 april 1977 | 16:16   | 06:22 | -     | -     | -     |
