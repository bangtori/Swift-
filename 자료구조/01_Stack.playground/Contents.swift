import UIKit

public struct Stack<T>{
    private var elements = [T]()
    public init(){}
    
    //push
    public mutating func push(_ element : T){
        self.elements.append(element)
    }
    //pop
    public mutating func pop() -> T?{
        return self.elements.popLast()
    }
    //peek
    public func peek()->T?{
        return self.elements.last
    }
    //isEmpty
    public var isEmpty:Bool{
        return elements.isEmpty
    }
    //count
    public var count:Int{
        return self.elements.count
    }
}
/*
 myStack -> [1,2,3]일 때
 CustomStringConvertible, CustomDebugStringConvertible 설정 전 출력 print(myStack)결과
 Stack<Int>(elements: [1, 2, 3])
 CustomStringConvertible, CustomDebugStringConvertible 설정 후 출력 print(myStack)결과
 [1, 2, 3]
 */
extension Stack:CustomStringConvertible, CustomDebugStringConvertible{
    public var description: String{
        return self.elements.description
    }
    public var debugDescription: String{
        return self.elements.debugDescription
    }
}
extension Stack:ExpressibleByArrayLiteral{
    public init(arrayLiteral elements: T...) {
        self.init()
        for element in elements {
            self.elements.append(element)
        }
    }
}
public struct ArrayIterator<T>:IteratorProtocol{
    var currentElement:[T]
    init(elements:[T]){
        self.currentElement = elements
    }
    mutating public func next() -> T? {
        if(!self.currentElement.isEmpty){
            return self.currentElement.popLast()
        }
        return nil
    }
}
extension Stack:Sequence{
    public func makeIterator() -> ArrayIterator<T> {
        return ArrayIterator<T>(elements: self.elements)
    }
}
var myStack:Stack = [1,2,3]
print(myStack)

for i in myStack{
    //스택의 특성에 맞게 뒤의 자료부터 순환함
    print(i)
}
