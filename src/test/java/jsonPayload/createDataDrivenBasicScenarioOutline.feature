
@JsonPayload
Feature:  Data driven scenario outline example - basics

  Scenario: Basics of Data driven
    * def firstName = "bibhu"
    * def id = 100
    * def isManager = false
    * print "Details are ", firstName, id, isManager
    # Details are  bibhu 100 false

  Scenario Outline: Basics of Data driven placeholder for <fn>
    * def firstName = "<fn>"
    * def id = <id>
    * def isManager = <manager>
    * print "Details are ", firstName, id, isManager
    # Details are  bibhu 100 false
    # Details are  samal 200 true
    * match firstName == '#string'
    * match id == '#number'
    * match isManager == '#boolean'
    Examples:
      | fn    | id  | manager |
      | bibhu | 100 | false   |
      | samal | 200 | true    |

  Scenario Outline: Basics of Data driven String placeholder for <fn>
    * def firstName = "<fn>"
    * def id = '<id>'
    * def isManager = '<manager>'
    * print "Details are ", firstName, id, isManager
    # Details are  bibhu 100 false
    # Details are  samal 200 true
    * match firstName == '#string'
    * match id == '#string'
    * match isManager == '#string'
    Examples:
      | fn    | id  | manager |
      | bibhu | 100 | false   |
      | samal | 200 | true    |

  Scenario Outline: Basics of Data driven - Json payload
    * def jsonDoc =
    """
    {
      "name": "<fn>",
      "id": <id>,
      "isManager": <manager>
    }
    """
    * print jsonDoc
    * print __row
    * print __num
    # First Row (for print jsonDoc)
    # {
    #  "name": "bibhu",
    #  "id": 100,
    #  "isManager": false
    # }
    # First Row (for print __row)
    # {
    #  "fn": "bibhu",
    #  "id": 100,
    #  "manager": false
    # }
    # First Row (for print __num)
    # 0

    # Second Row (for print jsonDoc)
    # {
    #  "name": "samal",
    #  "id": 200,
    #  "isManager": true
    # }
    # Second Row (for print __row)
    # {
    #  "fn": "samal",
    #  "id": 200,
    #  "manager": true
    # }
    # Second Row (for print __num)
    # 1
    Examples:
      | fn    | id! | manager! |
      | bibhu | 100 | false    |
      | samal | 200 | true     |

  Scenario Outline: Basics of Data driven embedded expression - Json payload
    * def jsonDoc =
    """
    {
      "name": "#(fn)",
      "id": #(id),
      "isManager": #(manager)
    }
    """
    * print jsonDoc
    * print fn
    * print id
    * print manager
    # First Row (for print jsonDoc)
    # {
    #  "name": "bibhu",
    #  "id": 100,
    #  "isManager": false
    # }
    # First Row (print fn)
    # bibhu
    # First Row (print id)
    # 100
    # First Row (print manager)
    # false

    # Second Row (for print jsonDoc)
    # {
    #  "name": "samal",
    #  "id": 200,
    #  "isManager": true
    # }
    # Second Row (print fn)
    # samal
    # Second Row (print id)
    # 200
    # Second Row (print manager)
    # true
    Examples:
      | fn    | id  | manager |
      | bibhu | 100 | false   |
      | samal | 200 | true    |