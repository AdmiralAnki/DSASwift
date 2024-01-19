import Foundation

public class Search{

    public static func binarySearch(_ arr:[Int],target:Int)->Int{
        
        var start = 0
        var end = arr.count-1
        
        while start <= end{
            let mid = start + (end - start)/2
            
            if arr[mid] == target{
                return mid
            }else if target > arr[mid]{
                start = mid+1
            }else{
                end = mid-1
            }
        }
        
        return -1
    }
}

