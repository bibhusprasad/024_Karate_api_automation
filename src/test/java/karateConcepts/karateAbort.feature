
@KarateConcepts
Feature: FKarate abort examples

  Scenario: Karate abort - simple exmaples
    * def role = "Admin"
    * if (role != "Admin") karate.abort()
    * print "Permission granted"
    # Permission granted

    * def role = "Employee"
    * if (role != "Admin") karate.abort()
    #* if (role != "Admin") karate.fail("Role must be Admin")
    * print "Permission granted"

  Scenario Outline: Karate abort - print response only after success call
    * configure abortedStepsShouldPass = true
    Given url 'https://api.sirv.com/v2/token'
    When request
    """
    {
	  "clientId": "#(id)",
	  "clientSecret": "#(secret)"
    }
    """
    Then method post
    And status <statusCode>
    * if(statusCode != 200) karate.abort()
    And print response.token
    Examples:
      | id                          | secret                                                                                   | statusCode |
      | IhlKkF29HbJUJAgOIYxLhMmjf7E | JOzdoJRlgtObbcPqUTMhLpUpENEtsExGXd9a2kbNbzppQq5m6yMEgwZkVM/dKow8q3p8OczQ6xUekXckPuRoeg== | 200        |
      | IhlKkF29HbJUJAgOIYxLhMmjf8f | JOzdoJRlgtObbcPqUTMhLpUpENEtsExGXd9a2kbNbzppQq5m6yMEgwZkVM/dKow8q3p8OczQ6xUekXckPuRoeg== | 401        |