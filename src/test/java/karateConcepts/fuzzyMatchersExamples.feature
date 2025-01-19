
@KarateConcepts
Feature: Fuzzy Matchers Examples

  Scenario: Fuzzy Matchers Ex - 1
    * def person =
    """
    {
      "id": "123",
      "dob": 1989
    }
    """
    * match person.id == "123"
    * match person.id == '#string'
    * match person.id == '##string'
    * match person.dob == '#number'


    # regex only work for string value
    * match person.id == '#regex [0-9]{3}'
    * match person.id == '#regex \\d{3}'

    * match (person.dob + "") == '#regex \\d{4}'

  Scenario: Fuzzy Matchers Ex - 2
    * def person =
    """
    {
      "name": "bibhu",
      "company": "Wells"
    }
    """
    * match person ==
    """
    {
      "name": "#present",
      "company": "#ignore"
    }
    """

  Scenario: Fuzzy Matchers Ex - 3
    * def person =
    """
    {
      "id": 123,
      "name": "bibhu",
      "manager": false,
      "skils": [
        "Java",
        "Spring"
      ]
    }
    """
    * match person.skils == '#array'
    * match person.skils == '#[]'
    * match person.skils == '#[2]'
    * match person.skils == '#[] #string'
    * match person.skils == '#? _[0] == "Java"'
    * match person.skils == '#? _[1].length == 6'