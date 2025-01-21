
@KarateConcepts
Feature: File Upload API auth token generate

  Background:
    Given url 'https://api.sirv.com/v2/token'
    # Both are same
    #* def tokenData = callonce read('../fileUpload/fileUploadToken.feature')
    * def tokenData = karate.callSingle('../fileUpload/fileUploadToken.feature')

  Scenario: Access token success
    And request
    """
    {
	  "clientId": "IhlKkF29HbJUJAgOIYxLhMmjf7E",
	  "clientSecret": "JOzdoJRlgtObbcPqUTMhLpUpENEtsExGXd9a2kbNbzppQq5m6yMEgwZkVM/dKow8q3p8OczQ6xUekXckPuRoeg=="
    }
    """
    When method post
    Then status 200

  Scenario: Access token failure
    And request
    """
    {
	  "clientId": "IhlKkF29HbJUJAgOIYxLhMmjfrf",
	  "clientSecret": "JOzdoJRlgtObbcPqUTMhLpUpENEtsExGXd9a2kbNbzppQq5m6yMEgwZkVM/dKow8q3p8OczQ6xUekXckPuRoeg=="
    }
    """
    When method post
    Then status 401

  Scenario: Generate access token - 1
    * print tokenData.response.token
    # will call api once to get token
    # eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRJZCI6IklobEtrRjI5SGJKVUpBZ09JWXhMaE1tamY3RSIsImNsaWVudE5hbWUiOiJLYXJhdGVVcGxvYWQxIiwic2NvcGUiOlsiYWNjb3VudDpyZWFkIiwiYWNjb3VudDp3cml0ZSIsInVzZXI6cmVhZCIsInVzZXI6d3JpdGUiLCJiaWxsaW5nOnJlYWQiLCJiaWxsaW5nOndyaXRlIiwiZmlsZXM6cmVhZCIsImZpbGVzOndyaXRlIiwiZmlsZXM6Y3JlYXRlIiwiZmlsZXM6dXBsb2FkOm11bHRpcGFydCIsImZpbGVzOnNoYXJlZEJpbGxpbmciLCJ2aWRlb3MiLCJpbWFnZXMiXSwiaWF0IjoxNzM3NDQ4MDc5LCJleHAiOjE3Mzc0NDkyNzksImF1ZCI6ImFjNmEyemFiZWoza2owZW5jc3NzaXQwbnp0c3B5OWd4In0.-HbYGSpXY2qKRlAl-qZHZF9zLW-xI89rMrXoC7HwlxI

  Scenario: Generate access token - 2
    * print tokenData.response.token
    # will not call api to get token as we are using callonce or callSingle it will show the value directly
    # eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRJZCI6IklobEtrRjI5SGJKVUpBZ09JWXhMaE1tamY3RSIsImNsaWVudE5hbWUiOiJLYXJhdGVVcGxvYWQxIiwic2NvcGUiOlsiYWNjb3VudDpyZWFkIiwiYWNjb3VudDp3cml0ZSIsInVzZXI6cmVhZCIsInVzZXI6d3JpdGUiLCJiaWxsaW5nOnJlYWQiLCJiaWxsaW5nOndyaXRlIiwiZmlsZXM6cmVhZCIsImZpbGVzOndyaXRlIiwiZmlsZXM6Y3JlYXRlIiwiZmlsZXM6dXBsb2FkOm11bHRpcGFydCIsImZpbGVzOnNoYXJlZEJpbGxpbmciLCJ2aWRlb3MiLCJpbWFnZXMiXSwiaWF0IjoxNzM3NDQ4MDc5LCJleHAiOjE3Mzc0NDkyNzksImF1ZCI6ImFjNmEyemFiZWoza2owZW5jc3NzaXQwbnp0c3B5OWd4In0.-HbYGSpXY2qKRlAl-qZHZF9zLW-xI89rMrXoC7HwlxI

