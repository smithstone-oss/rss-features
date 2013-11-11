Feature: Sign Up

  Scenario: Valid non premium sign up
    Given I have a valid sign up
    Then I should receive an email

  Scenario: Invalid non premium sign up
    Given I have an invalid sign up
    Then I should see the errors that need correcting
    And I shouldn't receive an email

  Scenario: Invalid premium sign up
    Given I have a problem with my payment setup
    Then I should see the errors about the payment
    And I should not receive an email

  Scenario: Valid premium sign up
    Given I have a valid premium sign up
    Then I should receive an email

