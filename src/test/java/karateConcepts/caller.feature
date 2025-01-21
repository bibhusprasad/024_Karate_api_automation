
@KarateConcepts
Feature: This feature file will call other feature files
  Scenario: Calling callable
    * def returnData = call read('callable.feature')
    * print returnData
    # {
    #  "password": "password",
    #  "username": "bibhu"
    # }
    * print returnData.username
    # bibhu

  Scenario: Calling callable2
    * def returnData = call read('callable2.feature')
    * print returnData.response.token
    # eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRJZCI6IklobEtrRjI5SGJKVUpBZ09JWXhMaE1tamY3RSIsImNsaWVudE5hbWUiOiJLYXJhdGVVcGxvYWQxIiwic2NvcGUiOlsiYWNjb3VudDpyZWFkIiwiYWNjb3VudDp3cml0ZSIsInVzZXI6cmVhZCIsInVzZXI6d3JpdGUiLCJiaWxsaW5nOnJlYWQiLCJiaWxsaW5nOndyaXRlIiwiZmlsZXM6cmVhZCIsImZpbGVzOndyaXRlIiwiZmlsZXM6Y3JlYXRlIiwiZmlsZXM6dXBsb2FkOm11bHRpcGFydCIsImZpbGVzOnNoYXJlZEJpbGxpbmciLCJ2aWRlb3MiLCJpbWFnZXMiXSwiaWF0IjoxNzM3NDUwMTU4LCJleHAiOjE3Mzc0NTEzNTgsImF1ZCI6ImFjNmEyemFiZWoza2owZW5jc3NzaXQwbnp0c3B5OWd4In0.Ll556f9tpiYpe_qo-z6M60r2nSQS8waKp5TU3yS3wso
    * print returnData.username
    # bibhu

  Scenario: Calling callable3
    * def clientId = "IhlKkF29HbJUJAgOIYxLhMmjf7E"
    * def clientSecret = "JOzdoJRlgtObbcPqUTMhLpUpENEtsExGXd9a2kbNbzppQq5m6yMEgwZkVM/dKow8q3p8OczQ6xUekXckPuRoeg=="
    * def returnData = call read('callable3.feature')
    * print returnData.response.token
    # eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRJZCI6IklobEtrRjI5SGJKVUpBZ09JWXhMaE1tamY3RSIsImNsaWVudE5hbWUiOiJLYXJhdGVVcGxvYWQxIiwic2NvcGUiOlsiYWNjb3VudDpyZWFkIiwiYWNjb3VudDp3cml0ZSIsInVzZXI6cmVhZCIsInVzZXI6d3JpdGUiLCJiaWxsaW5nOnJlYWQiLCJiaWxsaW5nOndyaXRlIiwiZmlsZXM6cmVhZCIsImZpbGVzOndyaXRlIiwiZmlsZXM6Y3JlYXRlIiwiZmlsZXM6dXBsb2FkOm11bHRpcGFydCIsImZpbGVzOnNoYXJlZEJpbGxpbmciLCJ2aWRlb3MiLCJpbWFnZXMiXSwiaWF0IjoxNzM3NDUwMTU4LCJleHAiOjE3Mzc0NTEzNTgsImF1ZCI6ImFjNmEyemFiZWoza2owZW5jc3NzaXQwbnp0c3B5OWd4In0.Ll556f9tpiYpe_qo-z6M60r2nSQS8waKp5TU3yS3ws

  Scenario: Calling callable3 custom name
    * def clientIdOne = "IhlKkF29HbJUJAgOIYxLhMmjf7E"
    * def clientSecretOne = "JOzdoJRlgtObbcPqUTMhLpUpENEtsExGXd9a2kbNbzppQq5m6yMEgwZkVM/dKow8q3p8OczQ6xUekXckPuRoeg=="
    * def returnData = call read('callable3.feature') {clientId: '#(clientIdOne)', clientSecret: '#(clientSecretOne)'}
    * print returnData.response.token
    # eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRJZCI6IklobEtrRjI5SGJKVUpBZ09JWXhMaE1tamY3RSIsImNsaWVudE5hbWUiOiJLYXJhdGVVcGxvYWQxIiwic2NvcGUiOlsiYWNjb3VudDpyZWFkIiwiYWNjb3VudDp3cml0ZSIsInVzZXI6cmVhZCIsInVzZXI6d3JpdGUiLCJiaWxsaW5nOnJlYWQiLCJiaWxsaW5nOndyaXRlIiwiZmlsZXM6cmVhZCIsImZpbGVzOndyaXRlIiwiZmlsZXM6Y3JlYXRlIiwiZmlsZXM6dXBsb2FkOm11bHRpcGFydCIsImZpbGVzOnNoYXJlZEJpbGxpbmciLCJ2aWRlb3MiLCJpbWFnZXMiXSwiaWF0IjoxNzM3NDUwMTU4LCJleHAiOjE3Mzc0NTEzNTgsImF1ZCI6ImFjNmEyemFiZWoza2owZW5jc3NzaXQwbnp0c3B5OWd4In0.Ll556f9tpiYpe_qo-z6M60r2nSQS8waKp5TU3yS3wso

  Scenario: Calling callable3 custom name pass json object
    * def clientIdOne = "IhlKkF29HbJUJAgOIYxLhMmjf7E"
    * def clientSecretOne = "JOzdoJRlgtObbcPqUTMhLpUpENEtsExGXd9a2kbNbzppQq5m6yMEgwZkVM/dKow8q3p8OczQ6xUekXckPuRoeg=="
    * def jsonObject =
    """
    {
      clientId: '#(clientIdOne)',
      clientSecret: '#(clientSecretOne)'
    }
    """
    * def returnData = call read('callable3.feature') jsonObject
    * print returnData.response.token
    # eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRJZCI6IklobEtrRjI5SGJKVUpBZ09JWXhMaE1tamY3RSIsImNsaWVudE5hbWUiOiJLYXJhdGVVcGxvYWQxIiwic2NvcGUiOlsiYWNjb3VudDpyZWFkIiwiYWNjb3VudDp3cml0ZSIsInVzZXI6cmVhZCIsInVzZXI6d3JpdGUiLCJiaWxsaW5nOnJlYWQiLCJiaWxsaW5nOndyaXRlIiwiZmlsZXM6cmVhZCIsImZpbGVzOndyaXRlIiwiZmlsZXM6Y3JlYXRlIiwiZmlsZXM6dXBsb2FkOm11bHRpcGFydCIsImZpbGVzOnNoYXJlZEJpbGxpbmciLCJ2aWRlb3MiLCJpbWFnZXMiXSwiaWF0IjoxNzM3NDUwMTU4LCJleHAiOjE3Mzc0NTEzNTgsImF1ZCI6ImFjNmEyemFiZWoza2owZW5jc3NzaXQwbnp0c3B5OWd4In0.Ll556f9tpiYpe_qo-z6M60r2nSQS8waKp5TU3yS3wso

  Scenario: Calling callable4 passing data in predefine object
    * def jsonObject =
    """
    {
      "clientId": "IhlKkF29HbJUJAgOIYxLhMmjf7E",
      "clientSecret": "JOzdoJRlgtObbcPqUTMhLpUpENEtsExGXd9a2kbNbzppQq5m6yMEgwZkVM/dKow8q3p8OczQ6xUekXckPuRoeg=="
    }
    """
    * def returnData = call read('callable4.feature') jsonObject
    * print returnData.response.token
    # eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRJZCI6IklobEtrRjI5SGJKVUpBZ09JWXhMaE1tamY3RSIsImNsaWVudE5hbWUiOiJLYXJhdGVVcGxvYWQxIiwic2NvcGUiOlsiYWNjb3VudDpyZWFkIiwiYWNjb3VudDp3cml0ZSIsInVzZXI6cmVhZCIsInVzZXI6d3JpdGUiLCJiaWxsaW5nOnJlYWQiLCJiaWxsaW5nOndyaXRlIiwiZmlsZXM6cmVhZCIsImZpbGVzOndyaXRlIiwiZmlsZXM6Y3JlYXRlIiwiZmlsZXM6dXBsb2FkOm11bHRpcGFydCIsImZpbGVzOnNoYXJlZEJpbGxpbmciLCJ2aWRlb3MiLCJpbWFnZXMiXSwiaWF0IjoxNzM3NDUwMTU4LCJleHAiOjE3Mzc0NTEzNTgsImF1ZCI6ImFjNmEyemFiZWoza2owZW5jc3NzaXQwbnp0c3B5OWd4In0.Ll556f9tpiYpe_qo-z6M60r2nSQS8waKp5TU3yS3wso