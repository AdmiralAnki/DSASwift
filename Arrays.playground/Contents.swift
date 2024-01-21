import UIKit


let sortedArray = [2,12,34,66,78,99,134,164,179,186,197,234,266,278,299]
var str = [ "a","b","c","d","e","f","g","h","i","j","k"]
var arrWithDuplicates = [1,1,1,2,3,4,4,4,5,5,6,6,6,7,7,8,8,8,8,8,9,9,9,10,10,11]

arrWithDuplicates.count
//Iteration.removeValue(nums: &arrWithDuplicates, 8)
//print(arrWithDuplicates)

let returnVal = Iteration.removeValues(nums: &arrWithDuplicates, [1,2,3,8])
print(arrWithDuplicates)


Iteration.removeValues(nums: &str, ["a","b"])
print(str)
