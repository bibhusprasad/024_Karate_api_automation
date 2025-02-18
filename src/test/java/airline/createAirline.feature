
@Airline
Feature: Create an Airline
  Scenario: Create an airline with valid data
    Given url airlineUrl
    And request {"_id":"252d3bca-d9fr-476c-9a97-562d547g535c","name":"Sri Lankan Airways","country":"Sri Lanka","logo":"https:\/\/upload.wikimedia.org\/wikipedia\/en\/thumb\/9\/9b\/Qatar_Airways_Logo.svg\/sri_lanka.png","slogan":"From Sri Lanka","head_quaters":"Katunayake, Sri Lanka","website":"www.srilankaaairways.com","established":"1990"}
    When method post
    Then status 200

  Scenario: Create an airline with valid data multiline data
    Given url airlineUrl
    And request
    """
    {
      "_id":"252d3bca-d9bb-476c-5s78-562d547g535c",
      "name": "Sri Lankan Airways",
      "country": "Sri Lanka",
      "logo": "https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png",
      "slogan": "From Sri Lanka",
      "head_quaters": "Katunayake, Sri Lanka",
      "website": "www.srilankaaairways.com",
      "established": "1990"
    }
    """
    When method post
    Then status 200

  Scenario: Create an airline with hardcoded json payload
    * def requestPayload = {}
    * requestPayload.id = "252d3bca-d9bb-476c-5s78-562d547g535k"
    * requestPayload.name = "Sri Lankan Airways", requestPayload.country = "Sri Lanka"
    * requestPayload.logo = "https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png", requestPayload.slogan = "From Sri Lanka"
    * requestPayload.head_quaters = "Katunayake, Sri Lanka", requestPayload.website = "www.srilankaaairways.com", requestPayload.established = "1990"

    Given url airlineUrl
    And request requestPayload
    When method post
    Then status 200

  Scenario: Create an airline with json file payload from external sources
    * def requestPayloadExternalFile = read('../payloads/createAirlinePayload.json')
    * print requestPayloadExternalFile
    # {
    #  "_id": "252d3bca-d9bb-476c-5s78-562d547g535t",
    #  "name": "Sri Lankan Airways",
    #  "country": "Sri Lanka",
    #  "logo": "https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png",
    #  "slogan": "From Sri Lanka",
    #  "head_quaters": "Katunayake, Sri Lanka",
    #  "website": "www.srilankaaairways.com",
    #  "established": "1990"
    # }

    Given url airlineUrl
    And request requestPayloadExternalFile
    When method post
    Then status 200
    * remove requestPayloadExternalFile.id
    And request requestPayloadExternalFile
    When method post
    Then status 200

  Scenario: Create an airline with json file payload from external sources and set new key
    * def requestPayloadExternalFile = read('../payloads/createAirlinePayload.json')
    * set requestPayloadExternalFile.ceo =
    """
    {
    "name": "Amod Malik",
    "address": [
        {
          "city": "Bangalore",
          "country": "India"
        },
        {
          "city": "Hyderabad",
          "country": "India"
        }
      ]
    }
    """
    * print requestPayloadExternalFile
    # {
    #  "_id": "252d3bca-d9bb-476c-5s78-562d547g535t",
    #  "name": "Sri Lankan Airways",
    #  "country": "Sri Lanka",
    #  "logo": "https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png",
    #  "slogan": "From Sri Lanka",
    #  "head_quaters": "Katunayake, Sri Lanka",
    #  "website": "www.srilankaaairways.com",
    #  "established": "1990",
    #  "ceo": {
    #    "name": "Amod Malik",
    #    "address": [
    #      {
    #        "city": "Bangalore",
    #        "country": "India"
    #      },
    #      {
    #        "city": "Hyderabad",
    #        "country": "India"
    #      }
    #    ]
    #  }
    # }
    * print requestPayloadExternalFile.ceo.name
    # Amod Malik
    * print requestPayloadExternalFile.ceo.address[0].city
    # Bangalore
    * print requestPayloadExternalFile.ceo.address[0].country
    # India
    * print requestPayloadExternalFile.ceo.address[1].city
    # Hyderabad
    * print requestPayloadExternalFile.ceo.address[1].country
    # India

    Given url airlineUrl
    And request requestPayloadExternalFile
    When method post
    Then status 200