import Foundation

//// 1st test: just create instances

class HogeClass {
}

struct HogeStruct {
}

var times = 1000000

///////////////////////  Class
var start1 = NSDate()

for i in 0...times {
    let a = HogeClass()
}

var elapsed1 = NSDate().timeIntervalSinceDate(start1)
println("class: \(elapsed1)")

///////////////////////  Struct

var start2 = NSDate()

for i in 0...times {
    let a = HogeStruct()
}

var elapsed2 = NSDate().timeIntervalSinceDate(start2)
 println("struct: \(elapsed2)")
