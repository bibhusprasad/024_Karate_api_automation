@DataFaker
Feature: Generate Random data using Java Faker library

  Scenario: Create simple JSON Object using Data Faker
    * def dataFaker = Java.type("net.datafaker.Faker")
    * def dataFakerObject = new dataFaker()
    * def idValue = dataFakerObject.number().digits(5)
    * def idName = dataFakerObject.name().fullName()
    * set jsonObjectPayload
      | path | value   |
      | id   | idValue |
      | name | idName  |
    * print jsonObjectPayload

# OUTPUT
#  {
#    "id": "01933",
#    "name": "Coy Grant"
#  }

  Scenario: Create simple JSON Object using Custom Java Class using Data Faker
    * def dataFaker = Java.type("utils.RandomDataGenerator")
    * def idValue = dataFaker.generateRandomNumber(6)
    * def idName = dataFaker.getRandomFullName()
    * set jsonObjectPayload
      | path | value   |
      | id   | idValue |
      | name | idName  |
    * print jsonObjectPayload

# OUTPUT
#  {
#    "id": "494406",
#    "name": "Cyrus Tremblay"
#  }