
@Airline
Feature: Get an Airline By Id
  Scenario: Get an Airline Details by airline id
    Given url 'https://api.instantwebtools.net/v1/airlines/'
    And path '73dd5420-3bf9-48f3-a0b6-17cf7aa61b19'
    When method get
    Then status 200
    And match responseStatus == 200
    And assert responseStatus == 200
    And print "responseStatus code is " + responseStatus
    And match response == {"_id":"73dd5420-3bf9-48f3-a0b6-17cf7aa61b19","name":"American Airlines","country":"United States","logo":"https:\/\/example.com\/logos\/american_airlines.png","slogan":"Going for great","head_quaters":"Fort Worth, Texas","website":"https:\/\/www.aa.com","established":"1930"}
    And match $ == {"_id":"73dd5420-3bf9-48f3-a0b6-17cf7aa61b19","name":"American Airlines","country":"United States","logo":"https:\/\/example.com\/logos\/american_airlines.png","slogan":"Going for great","head_quaters":"Fort Worth, Texas","website":"https:\/\/www.aa.com","established":"1930"}
    And match response.name == "American Airlines"
    And match $.name == "American Airlines"
    And print responseHeaders
    And print responseHeaders["Content-Type"][0]
    And match header Content-Type == "application/json; charset=utf-8"
    And match header Content-Type contains "application/json"
    And match karate.response.header('Content-Type') == "application/json; charset=utf-8"