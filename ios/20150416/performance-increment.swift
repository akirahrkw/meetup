import Foundation


protocol Incrementable {
    func increment() -> Int
}

class Count: Incrementable {
    
    var val = 0

    func increment() -> Int {
        val += 1
        return val
    }
}

func executeProtocol(count: Incrementable) {
    
    count.increment()
}

func executeGenerics<T: Incrementable>(count: T) {
    
    count.increment()
}

var times = 1000000

var count1 = Count()
var start1 = NSDate()
for i in 0...times {
    executeProtocol(count1)
}
var elapsed1 = NSDate().timeIntervalSinceDate(start1)
println("executeProtocol: \(elapsed1)")

var count2 = Count()
var start2 = NSDate()
for i in 0...times {
    executeGenerics(count2)
}
var elapsed2 = NSDate().timeIntervalSinceDate(start2)
println("executeGenerics: \(elapsed2)")
