//: [Previous](@previous)

import Foundation


struct Stack<T>{
    
    var list = Array<T>()
    
    var isEmpty:Bool{
        return list.isEmpty
    }
    
    mutating func pop()->T?{
        return list.popLast()
    }
    
    mutating func push(element:T){
        list.append(element)
    }
}

//MARK: Balanced Parentheses
/*
 Write a program that checks if an expression with parentheses (like 
 "((a + b) * c) - d" or "{[(a+b)]*(c-d)}")
 is correctly balanced. Every opening bracket should have a corresponding
 closing bracket of the same type.
 
 */





let input = "[(])" 
let input2 = "{[(a+b)]*(c-d}"
let input3 = "((a + b) * c) - d"
let input4 = "{]"
let input5 =  ")"
let input6 = "(:{}[]({[]}))"

func checkBalance(input:String)->Bool{
    var stack = Stack<Character>()
    
    for char in input{
        
        if char == "[" || char == "{" || char == "(" {
            stack.push(element: char)
        }else if char == "]" || char == "}" || char == ")"{
            if stack.isEmpty || !isMatching(top:stack.pop(), char: char) {
                return false
            }
        }
    }
    
    return stack.isEmpty
}

func isMatching(top:Character?, char:Character) -> Bool{
    return  top == "(" && char == ")" ||
            top == "{" && char == "}" ||
            top == "[" && char == "]"
}

for inputs in [input,input2,input3,input4,input5,input6]{
    print("The input: ",inputs, "balanced: " ,checkBalance(input: inputs))
}



//MARK: Postfix evalutation

func evaluatePostfix(equation:String)->Int{
    var stack = Stack<String>()
    let stringss = equation.split(separator: " ").map { String($0)}
    
    for character in stringss{
        
        if isCharacterOperator(char: character){
            guard let second = stack.pop(),
                  let first = stack.pop()
            else{return -1}
            
             let result = getResultFromOperator(char: character, op1:Int(first), op2:  Int(second))
            
            stack.push(element: String(result))
            
        }else{
            stack.push(element: character)
        }
    }
    
    guard let finalElement = stack.pop(),
          let result = Int(finalElement) else{return -33121}
    
    return result
}


func isCharacterOperator(char:String)->Bool{
    return  char == "+" || char == "-"
            || char == "/" || char == "*"
}


func getResultFromOperator(char:String,op1:Int?,op2:Int?)->Int{
    
    guard let op1 = op1,
          let op2 = op2
    else{ return -212123 }
    
    
    switch(char){
        case "+":
            return op1 + op2
        case "-":
            return op1 - op2
        case "/":
            return op1 / op2
        case "*":
            return op1 * op2
        default:
           return -1
    }
}


let equationOne = "3 4 + 2 * 7 /"
print(evaluatePostfix(equation: "5 1 2 + 4 * + 3 -"))
//: [Next](@next)
