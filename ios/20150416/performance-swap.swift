import Foundation

func swapTwoInts(inout a: Int, inout b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

func swapTwoValues<T>(inout a: T, inout b: T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

func swapTwoAny(inout a: Any, inout b: Any) {
    let temporaryA:Any = a
    a = b
    b = temporaryA
}


var times = 10000000

///// swap Int
var intA = 1
var intB = 2
var start1 = NSDate()
for i in 0...times {
    swapTwoInts(&intA, &intB)
}
var elapsed1 = NSDate().timeIntervalSinceDate(start1)
println("Int: \(elapsed1)")

///// swap Generics
var valA = 1
var valB = 2
var start2 = NSDate()
for i in 0...times {
    swapTwoValues(&valA, &valB)
}
var elapsed2 = NSDate().timeIntervalSinceDate(start2)
println("Generics: \(elapsed2)")

///// swap Any
var a3 = 1 as Any
var b3 = "a" as Any
var start3 = NSDate()
for i in 0...times {
    swapTwoAny(&a3, &b3)
}
var elapsed3 = NSDate().timeIntervalSinceDate(start3)
println("Protocol: \(elapsed3)")

var a = 1 as Any
var b = "a" as Any
swapTwoAny(&a, &b)
