Feature: Non Premium Users
  In order to encourage user sign up to the premium service
  I want all non premium users to use the application in a minimal way

  Background:
    Given "Bob" is not a premium customer
    And he is autenticated


  Scenario: single feed
    Given I have added a single feed
    Then I must see the latest articles from that feed
    And I must see the feed is available in my feed list


  Scenario: multiple feed
    Given I already have a collection of feeds
    When I add another feed
    Then I must see the latest articles from that feed
    And I must see all feeds are available in my feed list


