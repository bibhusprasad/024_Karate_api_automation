
@Airline
Feature: Get an Airline By Id using Auth
  Scenario: Get an Airline Details by airline id using Auth
    Given url authEndPointUrl
    And form field username = 'api-user2@iwt.net'
    And form field password = 'b3z0nV0cLO'
    And form field client_id = '0oahdhjkutaGcIK2M4x6'
    And form field grant_type = 'password'
    And form field scope = 'offline_access'
    And header Content-Type = 'application/x-www-form-urlencoded'
    When method post
    Then status 200
    And print response
    # {
    #  "token_type": "Bearer",
    #  "expires_in": 300,
    #  "access_token": "eyJraWQiOiI3MlFoSHkwd3FTRU5CcURYemF1cnlUWS0wWjl6Y2d4U0VsV0kyZkdUVktZIiwiYWxnIjoiUlMyNTYifQ.eyJ2ZXIiOjEsImp0aSI6IkFULmdaRGFhRzB6RHlSRkxLYU5nUERaOTVuTDhFbWtoX3h0cDRqNndTUVppeEUub2FyMnE1aHBpNGZXdzFsY3o0eDciLCJpc3MiOiJodHRwczovL2Rldi00NTc5MzEub2t0YS5jb20vb2F1dGgyL2F1c2hkNGM5NVF0RkhzZld0NHg2IiwiYXVkIjoiYXBpIiwiaWF0IjoxNzM3NDQ3MDU5LCJleHAiOjE3Mzc0NDczNTksImNpZCI6IjBvYWhkaGprdXRhR2NJSzJNNHg2IiwidWlkIjoiMDB1aGVvMDBoMVpPWTY2SEo0eDYiLCJzY3AiOlsib2ZmbGluZV9hY2Nlc3MiXSwiYXV0aF90aW1lIjoxNzM3NDQ3MDU5LCJzdWIiOiJhcGktdXNlcjJAaXd0Lm5ldCJ9.vDuQI-HICLeMxf4xSKmpJmsLYEAOfPsrDn3_qoPzSwd7xk6YFtIaMSRAdqobKqA7nvCiJ4q3zkK7U3KwldlO71k7fm5Qc9jGZ5VTeZFUQuSdIkKce_-2-DshWR5U1YzoUICkvZpdjFe5xyGoweuEzPdNuzZrx3Rgq-aHNc1zOmwKmoPLkkzKv6DMMTOEKobyzH68209shiUPxJTCatajFOxjb9qbfHttApW0pzy8Qh6KZaw_zHntSU5Bw0byeBEBJkyTGNxLPMFLQWAPxDu34aK73JpS5BdeuXUom13p-5IDrxyS9AlqK4NDs-uBYjrkF2jhFBfDijQzfdpLNiUXTg",
    #  "scope": "offline_access",
    #  "refresh_token": "rBv0TptPmlunrq-ars7CHJqXDQ83Vd6Q1pkV5dSUTNs"
    # }
    * def tokenValue = response.access_token
    And print tokenValue
    # eyJraWQiOiI3MlFoSHkwd3FTRU5CcURYemF1cnlUWS0wWjl6Y2d4U0VsV0kyZkdUVktZIiwiYWxnIjoiUlMyNTYifQ.eyJ2ZXIiOjEsImp0aSI6IkFULmdaRGFhRzB6RHlSRkxLYU5nUERaOTVuTDhFbWtoX3h0cDRqNndTUVppeEUub2FyMnE1aHBpNGZXdzFsY3o0eDciLCJpc3MiOiJodHRwczovL2Rldi00NTc5MzEub2t0YS5jb20vb2F1dGgyL2F1c2hkNGM5NVF0RkhzZld0NHg2IiwiYXVkIjoiYXBpIiwiaWF0IjoxNzM3NDQ3MDU5LCJleHAiOjE3Mzc0NDczNTksImNpZCI6IjBvYWhkaGprdXRhR2NJSzJNNHg2IiwidWlkIjoiMDB1aGVvMDBoMVpPWTY2SEo0eDYiLCJzY3AiOlsib2ZmbGluZV9hY2Nlc3MiXSwiYXV0aF90aW1lIjoxNzM3NDQ3MDU5LCJzdWIiOiJhcGktdXNlcjJAaXd0Lm5ldCJ9.vDuQI-HICLeMxf4xSKmpJmsLYEAOfPsrDn3_qoPzSwd7xk6YFtIaMSRAdqobKqA7nvCiJ4q3zkK7U3KwldlO71k7fm5Qc9jGZ5VTeZFUQuSdIkKce_-2-DshWR5U1YzoUICkvZpdjFe5xyGoweuEzPdNuzZrx3Rgq-aHNc1zOmwKmoPLkkzKv6DMMTOEKobyzH68209shiUPxJTCatajFOxjb9qbfHttApW0pzy8Qh6KZaw_zHntSU5Bw0byeBEBJkyTGNxLPMFLQWAPxDu34aK73JpS5BdeuXUom13p-5IDrxyS9AlqK4NDs-uBYjrkF2jhFBfDijQzfdpLNiUXTg

    Given url airlineAuthUrl
    And path '73dd5420-3bf9-48f3-a0b6-17cf7aa61b19'
    And header Authorization = "Bearer "+tokenValue
    When method get
    Then status 200
    And match responseStatus == 200
    And match response.name == "American Airlines"




