import Foundation

/*
 Queue data structure.
 
 New items are appended at the end.
 When an item is removed, it is taken from the front.
 
 */


public struct Queue<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        }
        return array.removeFirst()
    }
    
    public var front: T? {
        return array.first
    }
    
}
