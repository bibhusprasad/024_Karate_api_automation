
@KarateConcepts
Feature: Retry Until
  Scenario: Retry until use case 1
    # configure in global level karate-config.js file
    # * configure retry = {count: 3, interval: 5000}
    # Wrong URL (To test use wrong url)
    # Given url 'https://api.sirv.com/v22/token'
    # Right URL
    Given url 'https://api.sirv.com/v2/token'
    When request
    """
    {
	  "clientId": "IhlKkF29HbJUJAgOIYxLhMmjf7E",
	  "clientSecret": "JOzdoJRlgtObbcPqUTMhLpUpENEtsExGXd9a2kbNbzppQq5m6yMEgwZkVM/dKow8q3p8OczQ6xUekXckPuRoeg=="
    }
    """
    And retry until responseStatus == 200
    Then method post
    And status 200