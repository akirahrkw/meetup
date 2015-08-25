import Foundation

//// Ref VS Copy as Argument

var times = 1000000
var arraySize = 1000000

func classMethod(array: NSArray) {
    let a:AnyObject = array[0]
}

func structMethod(array: Array<Int>) {
    let a = array[0]
}

///////////////////////  Class
let a = NSMutableArray()
for i in 0...arraySize {
    a.addObject(i)
}

var start1 = NSDate()

for i in 0...times {
    classMethod(a)
}

var elapsed1 = NSDate().timeIntervalSinceDate(start1)
println("class: \(elapsed1)")

///////////////////////  Struct
var b = [] as Array<Int>
for i in 0...arraySize {
    b.append(i)
}

var start2 = NSDate()

for i in 0...times {
    structMethod(b)
}

var elapsed2 = NSDate().timeIntervalSinceDate(start2)
println("struct: \(elapsed2)")

/// Object is faster than Struct
/// the time of copy?
