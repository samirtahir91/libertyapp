@featureTest
Feature: Test gmail

@Scenario1
  Scenario: Test login with valid credential
    Given Open chrome and start application
    When I enter valid username and valid password
    Then user should be able to login successfully
