
@Airline
Feature: Get an Airline By Id
  Scenario: Get an Airline Details by airline id
    Given url 'https://api.instantwebtools.net/v1/airlines/'
    And path '73dd5420-3bf9-48f3-a0b6-17cf7aa61b19'
    When method get
    Then status 200
    And match response == {"_id":"73dd5420-3bf9-48f3-a0b6-17cf7aa61b19","name":"American Airlines","country":"United States","logo":"https:\/\/example.com\/logos\/american_airlines.png","slogan":"Going for great","head_quaters":"Fort Worth, Texas","website":"https:\/\/www.aa.com","established":"1930"}