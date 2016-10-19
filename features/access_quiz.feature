@javascript
Feature: As a Team
  in order to play Quizmaster
  I need to be able to access the Quiz interface.

  Background:
    Given there is a quiz called "Trivia"

  Scenario: Access quiz and subscribe to channel
    Given I am on the quiz "landing" page
    And I enter the code for "Trivia"
    Then I should be on the quiz page for "Trivia"
    And I should see "Welcome to quiz: Trivia"
    And I should see a Create Team form


  Scenario: Access quiz and subscribe to channel
    Given there is a "team_id" cookie set to "1"
    Given I am on the quiz "landing" page
    And I enter the code for "Trivia"
    Then I should be on the quiz page for "Trivia"
    And I should see "Welcome to quiz: Trivia"
    And I should see "Welcome back team"


  Scenario: Dealing with two windows
    Given I am on the quiz "landing" page
    And  I open a new window
    And I am on the quiz page for "Trivia" within window "1"
    Then I should have "2" active windows
