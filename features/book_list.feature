Feature: I'm picking a book

  Background:
    Given I'm on the books page

  Scenario: I'm look for books
    When there are books
    Then I should see books
