
@KarateConcepts
Feature: Karate repeat examples

  Scenario: Karate repeat example - 1
    * def dataGen = function() {return "karate" }
    * def data = karate.repeat(5, dataGen)
    * print data
    # [
    #  "karate",
    #  "karate",
    #  "karate",
    #  "karate",
    #  "karate"
    # ]

    * def dataGen1 = function(a) {return a+"karate" }
    * def data1 = karate.repeat(5, dataGen1)
    * print data1
    # [
    #  "0karate",
    #  "1karate",
    #  "2karate",
    #  "3karate",
    #  "4karate"
    # ]

  Scenario: Karate repeat example - 2
    * def dataFaker = Java.type("utils.RandomDataGenerator")
    * def dataGen = function() { return dataFaker.getRandomFullName() }
    * def data = karate.repeat(5, dataGen)
    * print data
    # [
    #  "Mr. Brendan Reynolds",
    #  "Beaulah Adams",
    #  "Mrs. Brant Marks",
    #  "Donald Feeney",
    #  "Augustine Kutch"
    # ]