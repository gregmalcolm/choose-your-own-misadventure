Feature: Creating a book

  Scenario: About to click on 'create book'
    Given I am on the books page
    Then I should not see a create book button

  Scenario: Clicked on 'create book' button
    Given I am on the books page
    When I click on the book name input box
    Then I should see a create book button
