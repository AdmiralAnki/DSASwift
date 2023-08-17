import UIKit



class Node<T>{
    var value:T
    var next:Node?
    
    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node:CustomStringConvertible{
    var description: String {
        if let next = next{
          return "\(value)->\(next)"
        }else{
            return "\(value)"
        }
    }
}


struct LinkedLists<Value>{
    var head:Node<Value>?
    var tail:Node<Value>?
    
    var isEmpty:Bool{
        head == nil
    }
    
    //push
    mutating func push(value:Value){
        head = Node(value: value, next: head)
        if tail == nil{
            tail = head
        }
    }
    
    //append
    mutating func append(value:Value){
       
        guard !isEmpty else{
            push(value: value)
            return
        }
        
        let node = Node(value: value)
        
        tail!.next = node
        tail! = node
    }
    
    //insert after
    mutating func insert(after:Int,value:Value){
        guard let node = node(at: after) else{ return }
        node.next =  Node(value: value,next: node.next)
    }
    
    //nodeAt
    func node(at index:Int)->Node<Value>?{
        
        var currentNode = head
        var i = 0
        
        while (currentNode != nil && i < index ){
            currentNode = currentNode!.next
            i+=1
        }
        return currentNode
    }
    
    
    //MARK: Delete
    
    mutating func pop()->Value?{
        
        defer{
            head = head?.next
            if isEmpty{
                tail = head
            }
        }
        return head?.value
    }
    
    
    mutating func removeLast()->Value?{
        
        guard let head = head else{
            return nil
        }
        
        if head.next == nil {
            pop()
        }
        
        
        var current = head
        var prev = head
        
        while let next = current.next{
            prev = current
            current = next
        }
        
        prev.next = nil
        tail = prev
        
        return current.value
    }
    
    mutating func removeAfter(index:Int)->Value?{
        guard let node = node(at: index) else { return nil}
        
        defer{
            if node.next === tail{
                tail = node
            }
            node.next = node.next?.next
        }
        
        return node.next?.value
    }
    
    
}




var linkedList = LinkedLists<Int>()

linkedList.append(value: 31)

//print(linkedList.head!)
//
//linkedList.pop()
//
//linkedList.append(value: 23)
//print(linkedList.head!)


linkedList.append(value: 15)
linkedList.push(value: 100)
linkedList.push(value: 10)
linkedList.push(value: 1)


print(linkedList.node(at: 2)?.value)
linkedList.insert(after: 2, value: 9999)

print(linkedList.head!)

print(linkedList.removeAfter(index: 3))

print(linkedList.head!)


struct Stack<T>{
    private var list = Array<T>()
    
    mutating func push(value:T){
        self.list.append(value)
    }
    
    mutating func pop()->T?{
        return self.list.popLast()
    }
    
    func display(){
        print(self.list)
    }
    
    func size()->Int{
        self.list.count
    }
}


func printReverseStack<T>(head:Node<T>?){
    
    var stack = Stack<T>()
    var current = head
    
    while let next = current{
        stack.push(value: next.value)
        current = next.next
    }
    print("size: ",current?.value)
    while let element = stack.pop(){
        print(element)
    }
}

print("Reverse stack: ")
printReverseStack(head: linkedList.head)
