Feature: I'm picking a book

  Scenario: I'm looking for books
    Given there are books
    When I go to the books page
    Then I should see books
