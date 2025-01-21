
@KarateConcepts
Feature: File Upload API auth token generate
  Scenario: File Upload API generate token
    Given url 'https://api.sirv.com/v2/token'
    When request
    """
    {
	  "clientId": "#(clientId)",
	  "clientSecret": "#(clientSecret)"
    }
    """
    Then method post