import Foundation

class HogeClass {
    var num = 0
    var double = 1.0
    var array = [1,2,3,4]
    var str = "test"
    var dict = ["a":"a", "b":"b", "c":"c"]
}

struct HogeStruct {
    var num = 0
    var double = 1.0
    var array = [1,2,3,4]
    var str = "test"
    var dict = ["a":"a", "b":"b", "c":"c"]
}

var times = 100000

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
