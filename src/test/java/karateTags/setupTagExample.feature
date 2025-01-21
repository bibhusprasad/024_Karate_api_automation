
@Run
Feature: This feature file contains @setup examples

  Scenario: Example of @setup - 1
    * def jsonObject = call read('@data')
    * print jsonObject

  @data @ignore
  Scenario: Generate test data
    * def jsonObject =
    """
    {
      "id": 1,
      "first_name": "Bibhu",
      "last_name": "Samal",
      "email": "bibhusprasad@gmail.com",
      "gender": "male",
      "ip_address": "109.138.84.103"
    }
    """

  Scenario: Example of @setup - 2
    * def jsonObject = call read('@setup')
    * print jsonObject

  @setup
  Scenario: Generate test data
    * def jsonObject =
    """
    {
      "id": 1,
      "first_name": "Bibhu",
      "last_name": "Samal",
      "email": "bibhusprasad@gmail.com",
      "gender": "male",
      "ip_address": "109.138.84.103"
    }
    """

  Scenario: Example of @setup - 3
    * def jsonObject = karate.setup('Person1')
    * print jsonObject
    # {
    #    "first_name": "Bibhu",
    #    "last_name": "Samal"
    #  }

  Scenario: Example of @setup - 4
    * def jsonObject = karate.setup('Person2')
    * print jsonObject
    # {
    #    "first_name": "Alok",
    #    "last_name": "Dash"
    #  }

  @setup=Person1
  Scenario: Generate test data
    * def jsonObject =
    """
    {
      "first_name": "Bibhu",
      "last_name": "Samal"
    }
    """

  @setup=Person2
  Scenario: Generate test data
    * def jsonObject =
    """
    {
      "first_name": "Alok",
      "last_name": "Dash"
    }
    """