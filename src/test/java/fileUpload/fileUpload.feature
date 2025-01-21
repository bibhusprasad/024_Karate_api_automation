
@KarateConcepts
Feature: File Upload API
  Scenario: File Upload API - Binary Encoding Content
    Given url 'https://api.sirv.com/v2/files/upload'
    And param filename = '/karatelogo.png'
    And header Authorization = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjbGllbnRJZCI6IklobEtrRjI5SGJKVUpBZ09JWXhMaE1tamY3RSIsImNsaWVudE5hbWUiOiJLYXJhdGVVcGxvYWQxIiwic2NvcGUiOlsiYWNjb3VudDpyZWFkIiwiYWNjb3VudDp3cml0ZSIsInVzZXI6cmVhZCIsInVzZXI6d3JpdGUiLCJiaWxsaW5nOnJlYWQiLCJiaWxsaW5nOndyaXRlIiwiZmlsZXM6cmVhZCIsImZpbGVzOndyaXRlIiwiZmlsZXM6Y3JlYXRlIiwiZmlsZXM6dXBsb2FkOm11bHRpcGFydCIsImZpbGVzOnNoYXJlZEJpbGxpbmciLCJ2aWRlb3MiLCJpbWFnZXMiXSwiaWF0IjoxNzM3NDM4NzY1LCJleHAiOjE3Mzc0Mzk5NjUsImF1ZCI6ImFjNmEyemFiZWoza2owZW5jc3NzaXQwbnp0c3B5OWd4In0.gjlmN46FKfqwefAIDZ_LpKWKVoy4A0Mlab-3WAPmFws'
    And request read('../payloads/fileupload.png')
    And header Content-Type = 'image/png'
    When method post
    Then status 200

  Scenario: Multi Part File Upload API - Multi Part
    Given url 'https://upload.uploadcare.com/base/'
    And multipart file logoFile = {read": '../payloads/fileupload.png', filename: 'karatelogo.png'}
    And multipart field UPLOADCARE_PUB_KEY = 'bf496a9e1ba1346a665d'
    When method post
    Then status 200