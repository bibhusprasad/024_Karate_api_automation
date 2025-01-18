
@KarateConcepts
Feature: Jsonpath concepts in details
  Scenario: Basic Jsonpath examples
    * def jsonObject = read('../payloads/jsonpathObject.json')
    * match jsonObject.expensive == 10

    * def expensiveObj = get jsonObject.expensive
    * print expensiveObj
    * match expensiveObj == 10

    * def expensiveObj1 = get jsonObject $.expensive
    * print expensiveObj1
    * match expensiveObj1 == 10

    * def expensiveObj2 = $jsonObject.expensive
    * print expensiveObj2
    * match expensiveObj2 == 10

    * def expensiveObj3 = karate.get('jsonObject.expensive')
    * print expensiveObj3
    * match expensiveObj3 == 10

    * def expensiveObj4 = karate.jsonPath(jsonObject, '$.expensive')
    * print expensiveObj4
    * match expensiveObj4 == 10

    * print jsonObject.store.book[0].title
    # Sayings of the Century

    * print karate.jsonPath(jsonObject, '$.store.book[0].title')
    # Sayings of the Century

    * print karate.get('$jsonObject.store.book[*].title')
    # [
    #  "Sayings of the Century",
    #  "Sword of Honour",
    #  "Moby Dick",
    #  "The Lord of the Rings"
    # ]

    * print karate.get('$jsonObject.store.book[*].title')[2]
    # Moby Dick

    * print karate.jsonPath(jsonObject, '$..title')
    # [
    #  "Sayings of the Century",
    #  "Sword of Honour",
    #  "Moby Dick",
    #  "The Lord of the Rings"
    # ]

    * print karate.jsonPath(jsonObject, '$..book..title')
    # [
    #  "Sayings of the Century",
    #  "Sword of Honour",
    #  "Moby Dick",
    #  "The Lord of the Rings"
    # ]

    * print karate.jsonPath(jsonObject, "$.store.book[?(@.author == 'Evelyn Waugh')]")
    # [
    #  {
    #    "category": "fiction",
    #    "author": "Evelyn Waugh",
    #    "title": "Sword of Honour",
    #    "price": 12.99
    #  }
    # ]

    * print karate.jsonPath(jsonObject, "$.store.book[?(@.author == 'Evelyn Waugh')].title")
    # [
    #  "Sword of Honour"
    # ]

    * print karate.jsonPath(jsonObject, "$.store.book[?(@.author == 'Evelyn Waugh' || @.author == 'J. R. R. Tolkien')].title")
    # [
    #  "Sword of Honour",
    #  "The Lord of the Rings"
    # ]

    * print karate.jsonPath(jsonObject, "$.store.book[?(@.author == 'Evelyn Waugh' && @.author == 'J. R. R. Tolkien')].title")
    # [
    # ]

    * print karate.jsonPath(jsonObject, '$.store.book[0]')
    # {
    #  "category": "reference",
    #  "author": "Nigel Rees",
    #  "title": "Sayings of the Century",
    #  "price": 8.95
    # }

    * print karate.jsonPath(jsonObject, '$.store.book[0,3]')
    # [
    #  {
    #    "category": "reference",
    #    "author": "Nigel Rees",
    #    "title": "Sayings of the Century",
    #    "price": 8.95
    #  },
    #  {
    #    "category": "fiction",
    #    "author": "J. R. R. Tolkien",
    #    "title": "The Lord of the Rings",
    #    "isbn": "0-395-19395-8",
    #    "price": 22.99
    #  }
    # ]

    * print karate.jsonPath(jsonObject, '$.store.book[0:3]')
    # [
    #  {
    #    "category": "reference",
    #    "author": "Nigel Rees",
    #    "title": "Sayings of the Century",
    #    "price": 8.95
    #  },
    #  {
    #    "category": "fiction",
    #    "author": "Evelyn Waugh",
    #    "title": "Sword of Honour",
    #    "price": 12.99
    #  },
    #  {
    #    "category": "fiction",
    #    "author": "Herman Melville",
    #    "title": "Moby Dick",
    #    "isbn": "0-553-21311-3",
    #    "price": 8.99
    #  }
    # ]

    * print karate.jsonPath(jsonObject, '$.store.book.length()')
    # 4

    * print karate.jsonPath(jsonObject, '$.store.book[*].price')
    # [
    #  8.95,
    #  12.99,
    #  8.99,
    #  22.99
    # ]

    * print karate.jsonPath(jsonObject, '$..price.sum()')
    # 73.87

    * print karate.jsonPath(jsonObject, '$..price.min()')
    # 8.95

    * print karate.jsonPath(jsonObject, '$..price.max()')
    # 22.99