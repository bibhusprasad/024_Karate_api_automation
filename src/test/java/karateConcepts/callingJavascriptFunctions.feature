
@KarateConcepts
Feature: Calling java scripts custom functions
  Scenario: Calling java script functions - 1
    * def getName = function() { return "bibhu" }
    * def value = getName()
    * print value
    # bibhu

    * def getFullName = function(name) { return name }
    * def value1 = getFullName("bibhu samal")
    * print value1
    # bibhu samal

    * def getWelcomeName =
    """
    function(name) {
      let welcome = "Hello " + name
      return welcome
    }
    """
    * def value2 = getWelcomeName("bibhu samal")
    * print value2
    # Hello bibhu samal

    * def getWelcomeName2 =
    """
    function printName(name) {
      let welcome = "Hello " + name
      return welcome
    }
    """
    * def value3 = getWelcomeName2("silu")
    * print value3
    # Hello silu

  Scenario: Calling java script functions - calling js file
    * def jsUtils = read('../utils/jsutils.js')

    * def value1 = jsUtils().printName()
    * print value1
    # bibhu

    * def value2 = jsUtils().printFullName("bibhu samal")
    * print value2
    # bibhu samal

    * def value3 = jsUtils().printWelcomeName("silu")
    * print value3
    # Hello silu

  Scenario: Calling java script functions - calling another feature file
    * def jsUtils = call read('reusableJsMethods.feature')
    * print jsUtils
    # {
    #  "printName": "com.intuit.karate.graal.JsFunction$Instantiable@30839e44",
    #  "printFullName": "com.intuit.karate.graal.JsFunction$Instantiable@5f174dd2",
    #  "printWelcomeName": "com.intuit.karate.graal.JsFunction$Instantiable@1945113f"
    # }
  * print jsUtils.printName()
  # bibhu
  * print jsUtils.printFullName("bibhu samal")
  # bibhu samal
  * print jsUtils.printWelcomeName("silu")
  # Welcome silu