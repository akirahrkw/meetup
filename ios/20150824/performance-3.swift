import Foundation


class HogeClass {
    var num = 1
    var double = 1.0
    var array = [1,2,3,4]
    var str = "test"
    var dict = ["a":"a", "b":"b", "c":"c"]

    func add(val: Int) -> Int {
        return num + val
    }
}

struct HogeStruct {
    var num = 1
    var double = 1.0
    var array = [1,2,3,4]
    var str = "test"
    var dict = ["a":"a", "b":"b", "c":"c"]

    func add(val: Int) -> Int {
        return num + val
    }
}

var times = 1000000

func classMethod(hoge: HogeClass, val: Int) -> Int {
    return hoge.add(val)
}

func structMethod(hoge: HogeStruct, val: Int) -> Int {
    return hoge.add(val)
}

///////////////////////  Class
let a = HogeClass()
var start1 = NSDate()
var result = 0
for i in 0...times {
    result = classMethod(a, result)
}

var elapsed1 = NSDate().timeIntervalSinceDate(start1)
println("class: \(elapsed1)")

///////////////////////  Struct
let b = HogeStruct()
var start2 = NSDate()
var result2 = 0
for i in 0...times {
    result2 = structMethod(b, result2)
}

var elapsed2 = NSDate().timeIntervalSinceDate(start2)
 println("struct: \(elapsed2)")
