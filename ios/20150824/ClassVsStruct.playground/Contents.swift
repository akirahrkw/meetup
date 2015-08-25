import UIKit

class SampleClass {
    var num = 0
}

struct SampleStruct {
    var num = 0
}

//////////////////// ex1: value VS reference



///// class
func classExample() {

    // create instance, and set number
    let clazz = SampleClass()
    clazz.num = 10
  
    // assign clazz to clazz2, and change number
    let clazz2 = clazz
    clazz2.num = 20

    print("clazz: \(clazz.num), clazz2: \(clazz2.num)")
}
classExample()










///// struct
func structExample() {

    var strucz = SampleStruct()
    strucz.num = 10
    
    // assign and change number
    var strucz2 = strucz
    strucz2.num = 20
    
    print("strucz: \(strucz.num), strucz2: \(strucz2.num)")
}
structExample()














/// Int is struct
func intExample() {
    var i = 10
    let i2 = i
    i++

    print("i: \(i), i2: \(i2)")
}
intExample()









/// Array is struct
func arrayExample() {
    let array = [1, 2, 3, 4, 5]
    var array2 = array
    array2.append(6)
    print("array: \(array)")
    print("array2: \(array2)")
}
arrayExample()










// NSArray is class
func nsarrayExample() {
    let array:NSMutableArray = [1, 2, 3]
    let array2:NSMutableArray = array
    array2.addObject(4)
    print("array: \(array)")
    print("array2: \(array2)")
}
nsarrayExample()















/////////////////// class object in struct

class SomeClass {
    var num = 10
}

struct SomeStruct {
    var num = 10
    var clazz = SomeClass()
}

func classInstruct() {

    // create instance
    var somestruct = SomeStruct()

    // copy
    let somestruct2 = somestruct
    
    // change number
    somestruct.num = 20
    
    // 10, because num is value type,
    print("somestruct2.num : \(somestruct2.num)")

    ////////////////

    // change class num
    somestruct.clazz.num = 20

    // 20, because somestruct and somestruct2 has same reference
    print("somestruct2.clazz.num : \(somestruct2.clazz.num)")
    
    // cause of the mess:(
}
classInstruct()

