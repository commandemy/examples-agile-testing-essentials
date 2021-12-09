Feature: Article

  Background:
    Given I have a healthy API

  Scenario: Creating a new article
    When I create an article with the title "Ruby is awesome"
    Then I should receive a success response
    And I should receive "Ruby is awesome" in the response body

  Scenario: Listing all articles
    When I list all available articles
    Then I should receive a success response
    And I should receive "Ruby is awesome" in the response body

  Scenario: Reading the latest article
    When I request the latest article
    Then I should receive a success response
    And I should receive "Ruby is awesome" in the response body

  Scenario: Updating an article
    When I update the latest article with the new title "Ruby is super awesome"
    Then I should receive a success response
    And I should receive "Ruby is super awesome" in the response body

  Scenario: Deleting an article
    When I delete the latest article
    Then I should receive a success response
    And the article should not be in the database anymore
