Feature: Negative Login test - The user should NOT be able to login with invalid credentials

  Background: Go to home page login
    Given The user is on the login page
    @negativeScenario
  Scenario Outline: Negative Scenario-User should NOT be able to login with invalid credentials
    When The user enters "<invalidUsername>" and "<invalidPassword>" and click login button
    Then verify that invalid "<message>"

    Examples:
      | invalidUsername | invalidPassword | message                                |
      | black           | ist             | Welcome black                          |
      | black           |                 | Please fill out Username and Password. |
      |                 | ist             | Please fill out Username and Password. |
      |                 | invalidPassword | Please fill out Username and Password. |
      | black           | invalidPassword | Wrong password.                        |
      | notExistUser    | 123456          | User does not exist.                   |
      |                 |                 | Please fill out Username and Password. |
