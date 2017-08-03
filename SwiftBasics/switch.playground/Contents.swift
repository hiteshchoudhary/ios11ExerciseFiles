//: Playground - noun: a place where people can play

//Rating system -> 5star is best and 1 star is bad


let userRated: Int = 6

switch userRated {
case 1...5:
    print("Thanks for giving 5 star to us !")
    
//case 4:
//    print("Thanks for giving 4 star to us !")
//case 3:
//    print("Thanks for giving 3 star to us !")
//case 2:
//    print("Thanks for giving 2 star to us !")
//case 1:
//    print("Thanks for giving 1 star to us !")
default:
    print("Please rate between 1 and 5")
}



