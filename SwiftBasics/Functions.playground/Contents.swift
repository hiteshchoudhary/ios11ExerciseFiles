//: Playground - noun: a place where people can play




func taxations(){
    //taxation system
    print("this is line one")
    print("THis is line 2")
    print("this is line 3")
}

taxations()
taxations()
taxations()



func sayHello(name: String) -> String{
    let hello = "Hello to " + name + "!"
    return hello
}

//sayHello(name: "John")
print(sayHello(name: "John"))
print(sayHello(name: "Angel"))
print(sayHello(name: "Ram"))


func justHello() -> String {
    let hellome = "Hello there"
    return hellome
}

print(justHello())

func findMinMax(myArray: [Int]) -> (min: Int, max: Int )  {
    
    var myMin = myArray[0]
    var myMax = myArray[0]
    
    for value in myArray[1..<myArray.count] {
        if value < myMin {
            myMin = value
        } else if value > myMax {
            myMax = value
        }
    }
    return (myMin, myMax)
    
}



let something = findMinMax(myArray: [3, 2, 6, 8, 1, -1, -5])

print("Minimum is: \(something.min)")
print("Maximum is: \(something.max)")


func anotherHello(_ name: String, from countryYourArefrom: String = "Internet") -> String {
    return "Hello to \(name) ! So you are from \(countryYourArefrom)."
}

print(anotherHello("John", from: "USA"))


// Variadic function

func myMean(_ num: Int...) -> Int{
    var total: Int = 0
    
    for n in num{
        total += n
    }
    
    return total
}

print(myMean(2,3,4,5))
print(myMean(12,3,104,5, 3, 2, 4, 6))










