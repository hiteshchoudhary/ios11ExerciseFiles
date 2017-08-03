//: Playground - noun: a place where people can play

var str = "Hello"

let heroes = ["Hulk", "Spiderman", "Iron Man", "Captain America"]

func sorty(_ s1: String,  _ s2: String) -> Bool{
    return s1 < s2
}
print(heroes)

//var newHeroes = heroes.sorted(by: sorty)
var newHeroes = heroes.sorted(by: {
    (_ s1: String,  _ s2: String) -> Bool in
    return s1 < s2
})

print(newHeroes)
