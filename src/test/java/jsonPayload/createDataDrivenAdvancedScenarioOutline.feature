
@JsonPayload
Feature:  Data driven scenario outline example - basics

  Scenario Outline: Advanced of Data driven read data from json file
    * def jsonDoc =
    """
    {
      "name": "<name>",
      "id": <id>,
      "isManager": <isManager>
    }
    """
    * print jsonDoc
    # First Row (for print jsonDoc)
    # {
    #  "name": "Tanya Somerville",
    #  "id": 1,
    #  "isManager": true
    # }

    # Second Row (for print jsonDoc)
    # {
    #  "name": "Jasper Paddick",
    #  "id": 2,
    #  "isManager": false
    # }
    Examples:
      |read('../payloads/dataDrivenMockData.json')|

  Scenario Outline: Advanced of Data driven embedded read data from json file
    * def jsonDoc =
    """
    {
      "name": ##(name),
      "id": ##(id),
      "isManager": ##(isManager)
    }
    """
    * print jsonDoc
    # First Row (for print jsonDoc)
    # {
    #  "name": "Tanya Somerville",
    #  "id": 1,
    #  "isManager": true
    # }

    # Second Row (for print jsonDoc)
    # {
    #  "name": "Jasper Paddick",
    #  "id": 2,
    #  "isManager": false
    # }
    Examples:
      |read('../payloads/dataDrivenMockData.json')|

  Scenario Outline: Advanced of Data driven read data from csv file
    * def jsonDoc =
    """
    {
      "name": "<name>",
      "id": <id>,
      "isManager": <isManager>
    }
    """
    * print jsonDoc
    # First Row (for print jsonDoc)
    # {
    #  "name": "Tanya Somerville",
    #  "id": 1,
    #  "isManager": true
    # }

    # Second Row (for print jsonDoc)
    # {
    #  "name": "Jasper Paddick",
    #  "id": 2,
    #  "isManager": false
    # }
    Examples:
      |read('../payloads/dataDrivenMockData.csv')|

