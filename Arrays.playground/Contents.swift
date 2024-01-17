import UIKit

//MARK: Sorting

var array = [2,1,5,79,22,89,23,98,23,54,234,342]

//Reversing

func reverseArray<T>(array: inout [T]){
    var start = 0
    var end = array.count-1
    
    while start < end{
        array.swapAt(start, end)
        start+=1
        end-=1
    }
}

reverseArray(array: &array)

print(array)
