//
//  DynamicArray.swift
//  Array
//
//  Created by Tian on 2020/11/9.
//

import Foundation


enum OptError: Error {
    case IndexOutOfBoundsException(String)
}

class DynamicArray: ListProtocol {
    let defaultCapacity = 10
    let elementNotFound = -1
    
    typealias Element = Int
    var elements: [Element]
    var capacity: Int = 10
    
    init(capacity: Int) {
        self.capacity = (capacity < defaultCapacity) ? defaultCapacity : capacity
        elements = [Element](repeating: 0, count: capacity)
    }
    
    var count: Int = 0
    var isEmpty: Bool {
        return count == 0
    }
    
    func contains(_ element: Element) -> Bool {
        return indexOf(element: element) != elementNotFound
    }
    
    func add(_ element: Element) {
        add(element: element, at: count)
    }
    
    func get(index: Int) -> Int? {
        if index < 0 || index >= count {
            return elementNotFound
        }
        return elements[index]
    }
    
    func set(element: Element, at index: Int) -> Element? {
        // checkrange
        let old = elements[index]
        elements[index] = element
        return old
    }
    
    func add(element: Element, at index: Int) {
        // checkrange
        for i in stride(from: count - 1, through: index, by: -1) {
            elements[i+1] = elements[i]
        }
        elements[index] = element
        count += 1
    }
    
    func remove(at index: Int) -> Element? {
        if index > 0 || index > count {
            return nil
        }
        let old = elements[index]
        for i in index+1..<count {
            elements[i-1] = elements[i]
        }
        count -= 1
        return old
    }
    
    func indexOf(element: Element) -> Int? {
        for i in 0..<count {
            if element == elements[i] {
                return i
            }
        }
        return elementNotFound
    }
    
    func clear() {
        count = 0
    }
    
    func printArr() {
        var res = ""
        for i in 0..<count {
            res += "\(elements[i]) "
        }
        print(res)
    }
}
