
@KarateConcepts
Feature: Conditional Logic example

  Scenario: Territory operator 1
    * def status = 200

    * def result1 = status == 200 ? "success" : "failed"
    * print result1
    # success

    * def result2 = status == 201 ? "success" : "failed"
    * print result2
    # failed

    * def flag = true
    * def result3 = status == 200 && flag == true ? "success" : "failed"
    * print result3
    # success

    * def flag = true
    * def result3 = status == 201 || flag == true ? "success" : "failed"
    * print result3
    # success
