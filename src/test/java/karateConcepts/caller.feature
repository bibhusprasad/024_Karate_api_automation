
@KarateConcepts
Feature: This feature file will call other feature files
  Scenario: Calling callable
    * def returnData = call read('callable.feature')
    * print returnData
    # {
    #  "password": "password",
    #  "username": "bibhu"
    # }
    * print returnData.username
    # bibhu