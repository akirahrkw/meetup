import Foundation

//// Array<Class> VS Array<Struct>

var arraySize = 1000000

class HogeClass {
    var num1 = 0
    var num2 = 1
}

struct HogeStruct {
    var num1 = 0
    var num2 = 1
}

///////////////////////  Class
var array = [] as Array<HogeClass>

for i in 0...arraySize {
    array.append(HogeClass())
}

var start1 = NSDate()

for a in array {
    let num = a.num1 + a.num2
}

var elapsed1 = NSDate().timeIntervalSinceDate(start1)
println("class: \(elapsed1)")

///////////////////////  Struct
var array2 = [] as Array<HogeStruct>
for i in 0...arraySize {
    array2.append(HogeStruct())
}

var start2 = NSDate()

for a in array2 {
    let num = a.num1 + a.num2
}

var elapsed2 = NSDate().timeIntervalSinceDate(start2)
println("struct: \(elapsed2)")


////////  Struct is 30% faster than Class
////////  reference vs value in array