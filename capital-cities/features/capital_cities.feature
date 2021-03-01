Feature: Capital Cities

  Background:
    Given I have a list of capital cities inside a file
    When I open the file

  Scenario:
    Then I should find "Berlin" in the list

  Scenario:
    Then I should find "London" in the list

  Scenario:
    Then I should not find "Graz" in the list