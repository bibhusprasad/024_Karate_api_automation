
@KarateConcepts
Feature: File Upload API auth token generate
  Scenario: File Upload API generate token
    # __arg is the predefine argument
    * def a = karate.get('__arg', null)
    Given url 'https://api.sirv.com/v2/token'
    When request a
    Then method post