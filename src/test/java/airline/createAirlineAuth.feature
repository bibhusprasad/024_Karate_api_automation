
@Airline
Feature: Create an Airline using auth

  Scenario: Create an airline with valid data multiline data
    * def tokenData = call read('generateAirlineToken.feature')
    #And print tokenData.tokenValue (or)
    And print tokenData.response.access_token
    # eyJraWQiOiI3MlFoSHkwd3FTRU5CcURYemF1cnlUWS0wWjl6Y2d4U0VsV0kyZkdUVktZIiwiYWxnIjoiUlMyNTYifQ.eyJ2ZXIiOjEsImp0aSI6IkFULmdaRGFhRzB6RHlSRkxLYU5nUERaOTVuTDhFbWtoX3h0cDRqNndTUVppeEUub2FyMnE1aHBpNGZXdzFsY3o0eDciLCJpc3MiOiJodHRwczovL2Rldi00NTc5MzEub2t0YS5jb20vb2F1dGgyL2F1c2hkNGM5NVF0RkhzZld0NHg2IiwiYXVkIjoiYXBpIiwiaWF0IjoxNzM3NDQ3MDU5LCJleHAiOjE3Mzc0NDczNTksImNpZCI6IjBvYWhkaGprdXRhR2NJSzJNNHg2IiwidWlkIjoiMDB1aGVvMDBoMVpPWTY2SEo0eDYiLCJzY3AiOlsib2ZmbGluZV9hY2Nlc3MiXSwiYXV0aF90aW1lIjoxNzM3NDQ3MDU5LCJzdWIiOiJhcGktdXNlcjJAaXd0Lm5ldCJ9.vDuQI-HICLeMxf4xSKmpJmsLYEAOfPsrDn3_qoPzSwd7xk6YFtIaMSRAdqobKqA7nvCiJ4q3zkK7U3KwldlO71k7fm5Qc9jGZ5VTeZFUQuSdIkKce_-2-DshWR5U1YzoUICkvZpdjFe5xyGoweuEzPdNuzZrx3Rgq-aHNc1zOmwKmoPLkkzKv6DMMTOEKobyzH68209shiUPxJTCatajFOxjb9qbfHttApW0pzy8Qh6KZaw_zHntSU5Bw0byeBEBJkyTGNxLPMFLQWAPxDu34aK73JpS5BdeuXUom13p-5IDrxyS9AlqK4NDs-uBYjrkF2jhFBfDijQzfdpLNiUXTg

    Given url airlineAuthUrl
    And request
    """
    {
      "_id":"252d3bca-d9bb-476c-5s78-562d547g535c",
      "name": "Sri Lankan Airways",
      "country": "Sri Lanka",
      "logo": "https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png",
      "slogan": "From Sri Lanka",
      "head_quaters": "Katunayake, Sri Lanka",
      "website": "www.srilankaaairways.com",
      "established": "1990"
    }
    """
    And header Authorization = "Bearer "+tokenData.response.access_token
    And header Content-Type = 'application/json'
    When method post
    Then status 200
