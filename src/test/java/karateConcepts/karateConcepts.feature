
@KarateConcepts
Feature: Embedded expressions in Karate Framework Concept

  Scenario: Embedded expressions in Karate Framework
    * def employee = {fName:'bibhu', lName:'samal'}
    * print employee
    # {
    #  "fName": "bibhu",
    #  "lName": "samal"
    # }

    * def fNameVal = 'bibhu var'
    * def lNameVal = 'samal var'
    * def idVal = 100
    * def isManager = false
    * def employee1 = {fName:'#(fNameVal)', lName:'#(lNameVal)', id:#(idVal), isManager:#(isManager) }
    * print employee1
    # {
    #  "fName": "bibhu var",
    #  "lName": "samal var",
    #  "id": 100,
    #  "isManager": false
    # }

    * def employee2 = {name:'#(fNameVal + " " + lNameVal)', id:#(idVal), isManager:#(isManager) }
    * print employee2
    # {
    #  "name": "bibhu var samal var",
    #  "id": 100,
    #  "isManager": false
    # }

    * def employee3 = {fName:'#(fNameGloVal)', lName:'#(lNameGloVal)', id:#(idVal), isManager:#(isManager) }
    * print employee3
    # {
    #  "fName": "bibhu global",
    #  "lName": "samal global",
    #  "id": 100,
    #  "isManager": false
    # }

    * def employee4 = read('../payloads/employee.json')
    * print employee4
    # {
    #  "fName": "bibhu json",
    #  "lName": "samal global"
    # }

    # hide null attribute
    * def employee5 = {fNname:'#(employee.fName)', lName:'#(employee.lName)', id:##(employee.idVal), isManager:#(employee.isManager) }
    * print employee5
    # {
    #  "fNname": "bibhu",
    #  "lName": "samal",
    #  "isManager": null
    # }

    * def welcomeTxt = `Hello ${employee.fName} ${employee.lName}`
    * print welcomeTxt
    # Hello bibhu samal

# OUTPUT
# print employee
# {
#   "fName": "bibhu",
#   "lName": "samal"
# }

# print employee1
# {
#  "fName": "bibhu var",
#  "lName": "samal var",
#  "id": 100,
#  "isManager": false
# }

# print employee2
# {
#   "name": "bibhu var samal var",
#   "id": 100,
#   "isManager": false
# }

#print employee3
# {
#  "fName": "bibhu global",
#  "lName": "samal global",
#  "id": 100,
#  "isManager": false
# }

# print employee4
# {
#  "fName": "bibhu json",
#  "lName": "samal global"
# }

# print employee5
# {
#  "fNname": "bibhu",
#  "lName": "samal",
#  "isManager": null
#}

# Hello bibhu samal