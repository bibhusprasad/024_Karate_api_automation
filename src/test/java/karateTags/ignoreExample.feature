
@Run
Feature: This feature file contains @ignore examples

  Scenario: Scenario One
    * print "Scenario one will execute"
    * call read('@util')

  @ignore
  Scenario: Scenario Tow
    * print "Scenario two will execute"

  Scenario: Scenario Three
    * print "Scenario three will execute"

  @ignore @util
  Scenario: Scenario Four
    * print "Scenario four will execute"
