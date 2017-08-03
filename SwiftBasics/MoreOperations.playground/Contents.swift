//: Playground - noun: a place where people can play



var str = "Hello, playground"

let defaultTemp = "Not able to fetch a Temp"

var getTemp: String? = "44"

var displayTemp = getTemp ?? defaultTemp

print(displayTemp)


//Logical Operations

let usernameFilled = true
let passwordFilled = false

// && - AND - if both are true -> true
// || - OR - if any one is true -> true


if usernameFilled || passwordFilled {
    print("Trying to login....")
}else {
    print("Please fill the form")
}

print(!usernameFilled)








