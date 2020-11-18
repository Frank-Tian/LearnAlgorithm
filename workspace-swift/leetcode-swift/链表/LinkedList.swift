//
//  LinkedList.swift
//  leetcode-swift
//
//  Created by Tian on 2020/11/18.
//

import Cocoa

public struct LinkedList<Value> {
   
    public var first: Node<Value>?
    public var last: Node<Value>?
    
    public init() {}
    
    public var isEmpty: Bool {
        return first == nil
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let first = first else {
            return "Empty List"
        }
        return String(describing: first)
    }
}

extension LinkedList {
    
    // head-first insertion 头插
    public mutating func push(_ val: Value) {
        first = Node(val: val, next: first)
        if last == nil {
            last = first
        }
    }
    
    // tail-end insertion. 尾部插入
    public mutating func append(_ val: Value) {
        guard !isEmpty else {
            push(val)
            return
        }
        last?.next = Node(val: val)
        last = last?.next
    }
    
    // Finding a particular node in the list
    // 查找一个特殊位置的元素
    public func node(at index: Int) -> Node<Value>? {
        var currentNode = first
        var currentIndex = 0
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        return currentNode
    }
    
    // insert the new node.
    // 插入新节点
    @discardableResult
    public mutating func insert(_ val: Value, after node: Node<Value>) -> Node<Value> {
        guard last !== node else {
            append(val)
            return last!
        }
        node.next = Node(val: val, next: node.next)
        return node.next!
    }
    
    // Removing a value at the front of the list is often referred to as pop
    // 移除首位节点
    @discardableResult
    public mutating func pop() -> Value? {
        defer {
            first = first?.next
            if isEmpty {
                last = nil
            }
        }
        return first?.val
    }
    
    // Removing the last node of the list is somewhat inconvenient
    @discardableResult
    public mutating func removeLast() -> Value? {
        return nil
    }
}
