Feature: Test Automation Rest API

  @web
  Scenario Outline: Test web login normal
    Given user go to login page
    And user input username <username>
    And user input pwd <pwd>
    And user click button login
    Then validation users can show side nav
    Examples:
      | username | pwd      |
      | admin    | admin    |
      | admin    | password |

  @web
  Scenario Outline: Test web sign up
    Given user go to login page
    And user input username <username>
    And user input pwd <pwd>
    And user click sign up button
    Then validation users can show side nav
    Examples:
      | username | pwd     |
      | admtest  | 123     |
      | 123      | admtest |