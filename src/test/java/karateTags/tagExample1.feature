
Feature:

  @Smoke
  Scenario: Smoke test Scenario 1
    * print "Smoke test Scenario 1 executed"

  @Smoke
  Scenario: Smoke test Scenario 2
    * print "Smoke test Scenario 2 executed"

  @Sanity
  Scenario: Sanity test Scenario 1
    * print "Sanity test Scenario 1 executed"

  @Smoke
  @Sanity
  Scenario: Smoke and Sanity test Scenario 1
    * print "Smoke and Sanity test Scenario 1 executed"
