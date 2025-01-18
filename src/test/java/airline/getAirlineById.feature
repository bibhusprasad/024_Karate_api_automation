
@Airline
Feature: Get an Airline By Id
  Scenario: Get an Airline Details by airline id
    Given url getAirlineUrl
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

# OUTPUT
# responseStatus code is 200

# {
#  "Server": [
#    "nginx/1.24.0 (Ubuntu)"
#  ],
#  "Date": [
#    "Fri, 17 Jan 2025 12:46:34 GMT"
#  ],
#  "Content-Type": [
#    "application/json; charset=utf-8"
#  ],
#  "Content-Length": [
#    "270"
#  ],
#  "Connection": [
#    "keep-alive"
#  ],
#  "X-Powered-By": [
#    "Express"
#  ],
#  "Access-Control-Allow-Origin": [
#    "*"
#  ],
#  "ETag": [
#    "W/\"10e-OfaMUw/70UVGjfKAext3kTU3Ds8\""
#  ],
#  "Set-Cookie": [
#  ]
# }

# application/json; charset=utf-8