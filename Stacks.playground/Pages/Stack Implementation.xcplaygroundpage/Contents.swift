import Foundation


struct Stack<T>{
    private var list = Array<T>()
    
    var isEmpty:Bool{ list.isEmpty }
    
    mutating func push(value:T){
        self.list.append(value)
    }
    
    mutating func pop()->T?{
        return self.list.popLast()
    }
    
    func display(){
        print(self.list)
    }
}


var stack = Stack<Int>()
stack.push(value: 31)
stack.push(value: 45)
stack.pop()
stack.display()
stack.push(value: 35)

stack.display()
