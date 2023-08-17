

//
func selectionSort(_ nums: inout [Int]){
    
    for i in 0..<nums.count{
        let minIndex = getMinIndex(nums,i)
        print("minIndex: ",minIndex)
        swap(nums: &nums, i, minIndex)
//        print("iter: ",i," ",nums)
    }
    
    print("After sort: ",nums)
}

func swap(nums: inout [Int],_ index1:Int,_ index2:Int){
    let temp = nums[index1]
    nums[index1] = nums[index2]
    nums[index2] = temp
}

func getMinIndex(_ nums:[Int],_ start:Int)->Int{
    
    var currMinInd = start
    for j in start..<nums.count{
        if nums[j]<nums[currMinInd]{
            currMinInd = j
        }
    }
  return currMinInd
}


var array = [3,55,12,78,41,2,6,99,31,1,28,98]

selectionSort(&array)
