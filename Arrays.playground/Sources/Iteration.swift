import Foundation

public class Iteration{
    
    public class func enumerate<T>(_ arr:[T]){
        //.enumerated(): This method returns a sequence of pairs (tuples), where each pair consists of an integer and an element from the words array. The integer represents the index of the element in the original array.
        
        for (index,element) in arr.enumerated(){
            print("index: ",index, " element ",element)
        }
    }
    public class func forwards<T>(_ arr:[T]){
        for element in arr {
            print(element)
        }
        
        
        arr.map{ print($0) }
    }
    
    public class func backwards<T>(_ arr:[T]){
        
        for index in stride(from:arr.count-1, to: 0, by: -1){
            print(arr[index])
        }
    }
    
    
    //Two pointers
    public class func reverseArray<T>(array: inout [T]){
        var start = 0
        var end = array.count-1
        
        while start < end{
            array.swapAt(start, end)
            start+=1
            end-=1
        }
    }
    
    public class func removeDuplicates<T:Equatable>(array: inout [T]){
        var j = 0
        
        for i in 0..<array.count{
            
            if array[i] != array[j]{
                j+=1
                array[j] = array[i]
            }
        }
    }
    
    public class func slidingWindow(_ nums:[Int],_ windowSize:Int){
        var i=0
        var maxSum = 0
        var currSum = 0
        
        for j in 0..<nums.count {
            
            currSum += nums[j]
            print("[i,j]: [\(i), \(j)], currSum: ",currSum)
            
            // Check if the window has reached the desired size
            if j >= windowSize-1 {
                // Slide the window forward
                maxSum = max(maxSum,currSum)
                currSum -= nums[i]
                i += 1
            }
        }
        
        print(maxSum)
    }
}


