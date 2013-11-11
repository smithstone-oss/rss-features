Feature: Premium Users
  In generate revenue
  I want a premium service that allows customers extras to the non premium service
  I want all non premium users to use the application in a minimal way

  Background:
    Given "Fred" is a premium customer
    And he is autenticated


  Scenario: single feed
    Given I have added a single feed
    Then I must see the latest articles from that feed
    And I must see the feed is available in my feed list


  Scenario: multiple feed
    Given I already have added a feed
    When I add another feed
    Then I must see the latest articles from that feed
    And I must see all feeds are available in my feed list


  Scenario: more feeds than the premium service
    Given I already have added the maximum number of feeds available to non premium subscribers
    When I add another set of feeds
    Then I must see all feeds are available in my feed list



