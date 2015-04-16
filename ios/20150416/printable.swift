import Foundation

//https://developer.apple.com/library/ios/documentation/General/Reference/SwiftStandardLibraryReference/Printable.html#//apple_ref/doc/uid/TP40014608-CH11-SW1

func executProtocol(p: Printable) -> Printable {
    return p
}
func executeGenerics<T: Printable>(p: T) -> T {
    return p
}

class Movie: Printable {

    var name: String!
    
    var description: String {
        return "this is \(name)"
    }
}

var movie: Movie = Movie()
movie.name = "swift"

var p: Printable = executProtocol(movie)
println((p as Movie).name)

var m = executeGenerics(movie)
println(m.name)
