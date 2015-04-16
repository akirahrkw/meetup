import Foundation

///// Int
func swapTwoInts(inout a: Int, inout b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var intA = 1
var intB = 2
swapTwoInts(&intA, &intB)
println(intA)
println(intB)

///// Double
func swapTwoDoubles(inout a: Double, inout b: Double) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var doubleA = 1.0
var doubleB = 2.0
swapTwoDoubles(&doubleA, &doubleB)
println(doubleA)
println(doubleB)

///// String
func swapTwoStrings(inout a: String, inout b: String) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var stringA = "a"
var stringB = "b"
swapTwoStrings(&stringA, &stringB)
println(stringA)
println(stringB)

///// Generics
func swapTwoValues<T>(inout a: T, inout b: T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var genericsA = "a"
var genericsB = "b"
swapTwoValues(&genericsA, &genericsB)
println(genericsA)
println(genericsB)

///// Any
func swapTwoAny(inout a: Any, inout b: Any) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var anyA = "a" as Any
var anyB = "b" as Any
swapTwoAny(&anyA, &anyB)
println(anyA)
println(anyB)
