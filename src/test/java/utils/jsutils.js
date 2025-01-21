/*
//Not possible to create multiple function inside a js file in karate.
function printName() { return "bibhu" }
function printFullName() { return "bibhu samal" }
*/

function person() {
    return {
        printName: function() {
            return "bibhu"
        },
        printFullName: function (name) {
            return name
        },
        printWelcomeName : function (name){
            let welcome = "Hello " + name
            return welcome
        }

    }
}
