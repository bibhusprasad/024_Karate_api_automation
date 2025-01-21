
@KarateConcepts
Feature: File Upload API auth token generate
  Scenario: File Upload API generate token
    * def username = 'bibhu'
    * def password = 'password'
    Given url 'https://api.sirv.com/v2/token'
    And request
    """
    {
	  "clientId": "IhlKkF29HbJUJAgOIYxLhMmjf7E",
	  "clientSecret": "JOzdoJRlgtObbcPqUTMhLpUpENEtsExGXd9a2kbNbzppQq5m6yMEgwZkVM/dKow8q3p8OczQ6xUekXckPuRoeg=="
    }
    """
    When method post
    Then status 200