
@JsonPayload
Feature:  Data driven scenario remove null value

  Scenario Outline: data driven show null values from json file
    * print __row
    # First row (for print __row)
    # {
    #  "name": null,
    #  "id": 1,
    #  "isManager": true
    # }

    # Second row (for print __row)
    # {
    #  "name": "Carissa McCart",
    #  "id": null,
    #  "isManager": true
    # }

    # Third row (for print __row)
    # {
    #  "name": "Kele Serrels",
    #  "id": 3,
    #  "isManager": null
    # }
    Examples:
      |read('../payloads/mockDataWithNullValue.json')|

  Scenario Outline: data driven filter null values using java class from json file
    * def jsonUtils = Java.type("utils.JsonUtils")
    * def jsonObject = jsonUtils.removeNullKeys(__row)
    * print jsonObject
    # First row (for print jsonObject)
    # {"isManager":"true","id":"1"}

    # Second row (for print jsonObject)
    # {"name":"Carissa McCart","isManager":"true"}

    # Third row (for print jsonObject)
    # {"name":"Kele Serrels","id":"3"}
    Examples:
      |read('../payloads/mockDataWithNullValue.json')|

  Scenario Outline: data driven filter null values using java class from json file as String
    * def jsonUtils = Java.type("utils.JsonUtils")
    * def jsonObject = jsonUtils.removeNullKeys(karate.toString(__row))
    * print jsonObject
    # First row (for print jsonObject)
    # {"isManager":"true","id":"1"}

    # Second row (for print jsonObject)
    # {"name":"Carissa McCart","isManager":"true"}

    # Third row (for print jsonObject)
    # {"name":"Kele Serrels","id":"3"}
    Examples:
      |read('../payloads/mockDataWithNullValue.json')|

  Scenario Outline: data driven show null values from csv file
    * print __row
    # First row (for print __row)
    # {
    #  "name": "",
    #  "id": "1",
    #  "isManager": "FALSE"
    # }

    # Second row (for print __row)
    # {
    #  "name": "Aurore Glander",
    #  "id": "",
    #  "isManager": "FALSE"
    # }

    # Third row (for print __row)
    # {
    #  "name": "Glen Elsdon",
    #  "id": "3",
    #  "isManager": ""
    #}
    Examples:
      |read('../payloads/mockDataWithNullValue.csv')|

  Scenario Outline: data driven filter null values using java class from csv file
    * def jsonUtils = Java.type("utils.JsonUtils")
    * def jsonObject = jsonUtils.removeNullKeys(__row)
    * print jsonObject
    # First row (for print jsonObject)
    # {"isManager":"FALSE","id":"1"}

    # Second row (for print jsonObject)
    # {"name":"Aurore Glander","isManager":"FALSE"}

    # Third row (for print jsonObject)
    # {"name":"Glen Elsdon","id":"3"}
    Examples:
      |read('../payloads/mockDataWithNullValue.csv')|

  Scenario Outline: data driven filter null values using java class from csv file as String
    * def jsonUtils = Java.type("utils.JsonUtils")
    * def jsonObject = jsonUtils.removeNullKeys(karate.toString(__row))
    * print jsonObject
    # First row (for print jsonObject)
    # {"isManager":"FALSE","id":"1"}

    # Second row (for print jsonObject)
    # {"name":"Aurore Glander","isManager":"FALSE"}

    # Third row (for print jsonObject)
    # {"name":"Glen Elsdon","id":"3"}
    Examples:
      |read('../payloads/mockDataWithNullValue.csv')|