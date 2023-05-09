import UIKit

public struct Queue<T>{
    private var data = [T]()
    public init(){}
    
    //count 프로퍼티
    public var count:Int{
        return data.count
    }
    //capacity 프로퍼티
    public var capacity:Int{
        get{
            return data.capacity
        }
        set{
            data.reserveCapacity(newValue)
        }
    }
    //enqueue
    public mutating func enqueue(element:T){
        data.append(element)
    }
    //dequeue
    public mutating func dequeue() -> T?{
        return data.removeFirst()
    }
    //peek
    public func peek() -> T?{
        return data.first
    }
    //clear
    public mutating func clear(){
        data.removeAll()
    }
    //isEmpty
    public func isEmpty()->Bool{
        return data.isEmpty
    }
    //isFull
    public func isFull()->Bool{
        return count == data.capacity
    }
}

extension Queue:CustomStringConvertible, CustomDebugStringConvertible{
    public var description: String{
        return data.description
    }
    public var debugDescription: String{
        return data.debugDescription
    }
}

extension Queue:ExpressibleByArrayLiteral{
    public init(arrayLiteral elements: T...){
        for element in elements {
            self.data.append(element)
        }
    }
}

public struct QueueIterator<T>: IteratorProtocol {
    var currentElement: [T]
    
    public mutating func next() -> T? {
        if (!self.currentElement.isEmpty) {
            return currentElement.removeFirst()
        }
        return nil
    }
}
 
extension Queue: Sequence {
    public func makeIterator() -> QueueIterator<T> {
        return QueueIterator(currentElement: self.data)
    }
}

//MutableCollection
extension Queue {
    private func  checkIndex(index: Int) {
        if index < 0 || index > count {
            fatalError("Index out of range")
        }
    }
}
 
extension Queue: MutableCollection {
    
    public var startIndex: Int {
        return 0
    }
    
    public var endIndex: Int {
        return count - 1
    }
    
    public func index(after i: Int) -> Int {
        return  data.index(after: i)
    }
    
    public subscript (index: Int) -> T {
        get {
            checkIndex(index: index) // 아 매개변수로 들어온 index 구나.
            return data[index]
        }
        set {
            checkIndex(index: index)
            data[index] = newValue
        }
    }
}
var q:Queue = [1,2,3,4]
print(q[1])
q[1] = 0
print(q[1])
print(q)
