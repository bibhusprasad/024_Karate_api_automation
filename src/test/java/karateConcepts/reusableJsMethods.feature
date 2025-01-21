
@KarateConcepts
Feature: Reusable Js Methods
  Scenario: reusable js method
    * def printName = function() { return "bibhu" }
    * def printFullName = function(name) { return name }
    * def printWelcomeName =
    """
    function(name) {
      let welcome = "Hello " + name
      return welcome
    }
    """