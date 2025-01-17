
@HelloWorld
Feature: Hello world feature

  Scenario: Print Hello world
    * print 'hello world'

# OUTPUT
# hello world

  Scenario: this scenario is for defining variables
    * def firstVariable = 12
    * def secondVariable = 'cakes'
    * print 'firstVariable -> ' + firstVariable, 'secondVariable -> ' + secondVariable

# OUTPUT
# firstVariable -> 12 secondVariable -> cakes

  Scenario: defining JSON object and print it
    Given def jsonObject =
    """
        [
          {
            "name": "jack",
            "phone" : 15435667788
          },
          {
            "name": "jennie",
            "phone" : 13443567234
          }
        ]
      """
    * print jsonObject[1].name, jsonObject[1].phone

# OUTPUT
# jennie 13443567234
