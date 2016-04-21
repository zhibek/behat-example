Feature: Example

  Scenario: Google Search
    Given I am on "/"
    When I fill in the following:
      | q | example |
    And I press "Google Search"
    Then I should see "example"
