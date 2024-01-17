//: [Previous](@previous)

import Foundation


var array = ["red","green","blue","pink","cyan","gray","purple"]
func knuthShuffle<T:Comparable>(array: inout [T]){
    for i in 0..<array.count{
        let swapWith =  Int.random(in: 0...i)
        array.swapAt(i,swapWith)
    }
}

knuthShuffle(array: &array)

print(array)






//: [Next](@next)
