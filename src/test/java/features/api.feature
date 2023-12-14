Feature: Test Automation Rest API

  @api
  Scenario Outline: Test get list user normal
    Given prepare url for <USER>
    And hit api get list users
    Then validation status code is equals 200
    Then validation response body get list users

    # Negative Case : Invalid URL
    Given prepare url for <USER>
    And hit api get list users
    Then validation status code is equals 404
    Examples:
      | USER                                     |
      | https://dummyapi.io/docs/user            |
      | https://dummyapi.io/docs/user/1          |
      | https://dummyapi.io/docs/userGetNegative |

  @api
  Scenario Outline: Test create new user normal
    Given prepare url for <USER>
    And hit api post create new users <name>
    Then validation status code is equals 201
    Then validation response body post create new user
    Examples:
      | USER                                  | name                       |
      | https://dummyapi.io/docs/post         | Prasetyo Bintang Arummardi |
      | https://dummyapi.io/docs/postNegative | Prasetyo Bintang           |

  @api
  Scenario Outline: Test delete user normal
    Given prepare url for <USER>
    And hit api post create new users <nametodelete>
    Then validation status code is equals 201
    Then validation response body post create new user
    And hit api delete new
    Then validation status code is equals 204
    Examples:
      | USER                                        | nametodelete                      |
      | https://dummyapi.io/docs/user               | Prasetyo Bintang Arummardi |
      | https://dummyapi.io/docs/userDeleteNegative | Prasetyo Bintang           |