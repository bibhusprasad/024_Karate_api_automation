
@Run
Feature: Env feature file test

  @env=dev,qa
  Scenario: this test scenario is valid for dev and qa env - 1
    * print "This is dev and qa test scenario 1"

  @env=dev
  Scenario: this test scenario is valid for dev env - 2
    * print "This is dev test scenario 2"

  @env=qa
  Scenario: this test scenario is valid for qa env - 3
    * print "This is qa test scenario 3"
