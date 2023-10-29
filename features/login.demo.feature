Feature: Test login functionality

  Scenario Outline: check login page with valid credentials - Username,Password
    Given user is on login page
    When user entres <username> and <password>
    And clicks on login button
    Then this <message> is displayed

    Examples: 
      | username | password             | message                          |
      | tomsmith | SuperSecretPassword! | "You logged into a secure area!" |
      | tom      |                  123 | "Your username is invalid!"      |
