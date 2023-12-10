Feature: Test Automation Rest API

  @api
  Scenario: Test get list user normal
    Given prepare url for "USER"
    And hit api get list users
    Then validation status code is equals 200
    Then validation response body get list users

  @api
  Scenario: Test create new user normal
    Given prepare url for "USER"
    And hit api post create new users
    Then validation status code is equals 201
    Then validation response body post create new user

  @api
  Scenario: Test delete user normal
    Given prepare url for "USER"
    And hit api post create new users
    Then validation status code is equals 201
    Then validation response body post create new user
    And hit api delete new
    Then validation status code is equals 204