
@KarateConcepts
Feature: Tag example

  @success
  Scenario: call by using tags 1
    # __arg is the predefine argument
    * def name = karate.get('__arg.name', null)
    * def password = karate.get('__arg.password', null)
    * def name = name + password + "pass"

  @failure
  Scenario: call by using tags 1
    # __arg is the predefine argument
    * def name = karate.get('__arg.name', null)
    * def password = karate.get('__arg.password', null)
    * def name = name + password + "fail"


