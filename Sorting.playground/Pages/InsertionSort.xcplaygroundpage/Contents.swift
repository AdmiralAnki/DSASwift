//: [Previous](@previous)


func insertionSort(_ nums: inout [Int]){
    for i in 0..<nums.count{
        for j in stride(from: i, through: 1, by: -1){
            if nums[j]<nums[j-1]{
                swap(nums: &nums, index1:j, index2: j-1)
            }else{
                break
            }
        }
    }
    print(nums)
}

func swap(nums: inout [Int],index1:Int,index2:Int){
    let temp = nums[index1]
    nums[index1] = nums[index2]
    nums[index2] = temp
}

var array = [3,55,12,78,41,2,6,99,31,1,28,98]
insertionSort(&array)

//: [Next](@next)
