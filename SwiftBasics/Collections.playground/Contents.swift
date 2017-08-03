//: Playground - noun: a place where people can play



var str = "Hello, playground"


var todoList: [String] = ["buy milk", "buy vegies", "go to gym"]


//var tempArray = Array(repeating: 3, count: 20)
var tempArray = [Any]()

todoList.append("record videos")

print(todoList)

todoList[0] = "buy ice tea"
print(todoList)

if tempArray.isEmpty {
    print("Array is empty")
}

//for item in todoList {
//    print("You have to \(item)")
//}

for (index, value) in todoList.enumerated() {
    print("Item index is: \(index + 1) and value is: \(value)")
}


// Array is done for now !

var spanishNums: [String: String] = [
    "one" : "Uno",
    "Two": "Dos",
    "Three": "tres",
    "Four": "cuatro"
]

print(spanishNums["one"])

print("Number of elements are \(spanishNums.count)")

for (key, value) in spanishNums {
    print("\(key): \(value)")
}

for spanish in spanishNums.values {
    print(spanish)
}


let english = [String](spanishNums.keys)
print(english)





