Feature: Creating a book
  Background:
    Given I am authenticated
    And I am on the books page

  Scenario: About to click on 'create book'
    Then I should not see a create book button

  Scenario: Clicked on 'create book' button
    When I click on the book name input box
    Then I should see a create book button
