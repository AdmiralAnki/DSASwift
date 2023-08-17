import UIKit

func threeSum(_ nums:[Int],_ target:Int){

    for i in 0..<nums.count-2{
        var start = i+1
        var end = nums.count-1
        if twoSum(begin:start,nums:nums,target:target-nums[i]){
            print("z:",nums[i])
        }else{
            //nons
        }
    }
}


func twoSum(begin:Int,nums:[Int],target:Int)->Bool{
    
    var start = begin
    var end = nums.count-1
    
    while start < end {
        if nums[start]+nums[end] < target{
            start+=1
        }else if nums[start]+nums[end]>target{
            end-=1
        }else{
            print("x:",nums[start],"y:",nums[end])
            return true
        }
    }
    return false
}




//print(twoSum(begin: 0, nums: pop, target: 10))

threeSum(pop, 9)

let pop = [1,2,3,4,5,6,7,8,9,10,11,12]
func twoDifference(_ nums:[Int],_ target:Int)->(Int,Int){
    
    var dict = [Int:Int]()
    
    for i in 0..<nums.count{
        let curr = nums[i]
        var secondValue:Int
        
        if curr > target{
            secondValue = curr-target
        }else{
            secondValue = target-curr
        }
        
        if let index = dict[secondValue]{
            return (i,index)
        }else{
            dict[curr] = i
        }
    }
    
    return (-1,-1)
    
}


twoDifference(pop,6)
