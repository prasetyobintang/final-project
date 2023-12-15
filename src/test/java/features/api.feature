Feature: Test Automation Rest API

  @api
  @api-positive
  Scenario Outline: Test get list user normal
    Given prepare <base_url> for <user>
    And hit api get list users
    Then validation status code is equals 200
    Then validation response body get list users
    Examples:
      | base_url                      | user                                      |
      | https://dummyapi.io/docs/user | https://dummyapi.io/data/v1/user?limit=10 |
      | https://dummyapi.io/docs/post | https://dummyapi.io/data/v1/post?limit=10 |

  @api
  @api-negative
  Scenario Outline: Test get list user normal
    Given prepare <base_url> for <user>
    And hit api get list users
    Then validation status code is equals 404
    Then validation response body get list users
    Examples:
      | base_url                      | user                                                   |
      | https://dummyapi.io/docs/user | https://dummyapi.io/docs/user/60d0fe4f5311236168a109ca |
      | https://dummyapi.io/docs/post | https://dummyapi.io/docs/post/60d0fe4f5311236168a109ca |

  @api
  @api-positive
  Scenario: Test create new user normal
    Given prepare url for "USER"
    And hit api post create new users
    Then validation status code is equals 201
    Then validation response body post create new user

  @api
  @api-negative
  Scenario: Test create new user normal
    Given prepare url for "USERS"
    And hit api post create new users
    Then validation status code is equals 400
    Then validation response body post create new user

  @api
  Scenario: Test delete user normal
    Given prepare url for "USER"
    And hit api post create new users
    Then validation status code is equals 201
    Then validation response body post create new user
    And hit api delete new
    Then validation status code is equals 204