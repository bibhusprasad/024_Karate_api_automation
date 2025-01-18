@JsonPayload
Feature: Create Nested Complex Json payloads in Karate Framework using set multiple

  Scenario: Create simple JSON Object
    * set jsonObjectPayload
      | path | value            |
      | id   | 12               |
      | name | "Amod's Airline" |
    * print jsonObjectPayload
    #  {
    #   "id": 12,
    #   "name": "Amod's Airline"
    #  }

  Scenario: Create Nested JSON Object Case 1
    * set jsonObjectPayload
      | path            | value            |
      | id              | 12               |
      | name            | "Amod's Airline" |
      | address.city    | 'Bangalore'      |
      | address.country | 'India'          |
    * print jsonObjectPayload
    #  {
    #    "id": 12,
    #    "name": "Amod's Airline",
    #    "address": {
    #      "city": "Bangalore",
    #      "country": "India"
    #    }
    #  }

  Scenario: Create Nested JSON Object Case 2
    * set jsonObjectPayload
      | path                        | value            |
      | id                          | 12               |
      | name                        | "Amod's Airline" |
      | address[0].primary.street   | 'street one'     |
      | address[0].primary.city     | 'Bangalore'      |
      | address[1].secondary.street | 'street two'     |
      | address[1].secondary.city   | 'Hyderabad'      |
    * print jsonObjectPayload
    #  {
    #    "id": 12,
    #    "name": "Amod's Airline",
    #    "address": [
    #      {
    #        "primary": {
    #          "street": "street one",
    #          "city": "Bangalore"
    #        }
    #      },
    #      {
    #        "secondary": {
    #          "street": "street two",
    #          "city": "Hyderabad"
    #        }
    #      }
    #    ]
    #  }

  Scenario: Create simple JSON Object with variables
    * def idValue = 12
    * def nameValue = "Amod's Airline"
    * set jsonObjectPayload
      | path | value     |
      | id   | idValue   |
      | name | nameValue |
    * print jsonObjectPayload
    #  {
    #    "id": 12,
    #    "name": "Amod's Airline"
    #  }

  Scenario: Create simple Array Object
    * set jsonObjectPayload
      | path | 0                | 1             |
      | id   | 12               | 13            |
      | name | "Amod's Airline" | 'Bibhu Samal' |
    * print jsonObjectPayload
    #  [
    #    {
    #      "id": 12,
    #      "name": "Amod's Airline"
    #    },
    #    {
    #      "id": 13,
    #      "name": "Bibhu Samal"
    #    }
    #  ]

  Scenario: Create simple Array Object Exclude filed
    * set jsonObjectPayload
      | path | 0                | 1             |
      | id   | 12               |               |
      | name | "Amod's Airline" | 'Bibhu Samal' |
    * print jsonObjectPayload
    #  [
    #    {
    #      "id": 12,
    #      "name": "Amod's Airline"
    #    },
    #    {
    #      "name": "Bibhu Samal"
    #    }
    #  ]

  Scenario: Create simple Array Object null filed
    * set jsonObjectPayload
      | path | 0                | 1             |
      | id   | 12               | (null)        |
      | name | "Amod's Airline" | 'Bibhu Samal' |
    * print jsonObjectPayload
    #  [
    #    {
    #      "id": 12,
    #      "name": "Amod's Airline"
    #    },
    #    {
    #      "id": null,
    #      "name": "Bibhu Samal"
    #    }
    #  ]

  Scenario: Manipulate existing json
    * def existingJsonObjectPayload = {name : 'Bibhu Samal'}
    * set existingJsonObjectPayload
      | path | value            |
      | id   | 12               |
      | name | "Amod's Airline" |
    * print existingJsonObjectPayload
    #  {
    #    "name": "Amod's Airline",
    #    "id": 12
    #  }

  Scenario: Manipulate existing json - set with jsonpath
    * def existingJsonObjectPayload = {name : 'Bibhu Samal'}
    * set existingJsonObjectPayload.details
      | path | value            |
      | id   | 12               |
      | name | "Amod's Airline" |
    * print existingJsonObjectPayload
    #  {
    #    "name": "Bibhu Samal",
    #    "details": {
    #      "id": 12,
    #      "name": "Amod's Airline"
    #    }
    #  }