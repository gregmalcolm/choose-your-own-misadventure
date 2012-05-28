Feature: Picking a book
  Background:
    Given I am authenticated

  Scenario: I'm looking for books
    Given there are books
    When I go to the books page
    Then I should see books
