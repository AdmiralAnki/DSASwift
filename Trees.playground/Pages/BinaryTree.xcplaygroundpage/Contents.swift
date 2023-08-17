//: [Previous](@previous)

class BinaryNode<T>{
    
    var value : T
    
    var leftChild:BinaryNode?
    var rightChild:BinaryNode?
    
    public init(value:T){
        self.value = value
    }
    
    func preOrderTraversal(){
        print(value)
        leftChild?.preOrderTraversal()
        rightChild?.preOrderTraversal()
    }
    
    func preOrderSerialize(_ nums: inout [T?]){
        nums.append(value)
        if let leftChild = leftChild{
            leftChild.preOrderSerialize(&nums)
        }else{
            nums.append(nil)
        }
        
        if let rightChild = rightChild{
            rightChild.preOrderSerialize(&nums)
        }else{
            nums.append(nil)
        }
    }
}




var tree: BinaryNode<Int> = {
  let zero = BinaryNode(value: 0)
  let one = BinaryNode(value: 1)
  let five = BinaryNode(value: 5)
  let seven = BinaryNode(value: 7)
  let eight = BinaryNode(value: 8)
  let nine = BinaryNode(value: 9)

  seven.leftChild = one
  one.leftChild = zero
  one.rightChild = five
  seven.rightChild = nine
  nine.leftChild = eight

  return seven
}()


tree.preOrderTraversal()

var nums = [Int?]()
tree.preOrderSerialize(&nums)
print(nums)




var treeTwo: BinaryNode<Int> = {
  let root = BinaryNode(value: 15)
  let one = BinaryNode(value: 10)
  let tfive = BinaryNode(value: 25)
  let five = BinaryNode(value: 5)
  let eight = BinaryNode(value: 12)
  let nine = BinaryNode(value: 17)

    root.leftChild = one
    root.rightChild = five
    one.leftChild = five
    one.rightChild = eight
    tfive.leftChild = nine

  return root
}()

nums.removeAll()
treeTwo.preOrderSerialize(&nums)
print(nums)

//: [Next](@next)
