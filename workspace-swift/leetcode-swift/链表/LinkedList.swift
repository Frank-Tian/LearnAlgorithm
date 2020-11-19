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
    
    // head-first insertion 头插 O(1)
    public mutating func push(_ val: Value) {
        first = Node(val: val, next: first)
        if last == nil {
            last = first
        }
    }
    
    // tail-end insertion. 尾部插入 O(1)
    public mutating func append(_ val: Value) {
        guard !isEmpty else {
            push(val)
            return
        }
        last?.next = Node(val: val)
        last = last?.next
    }
    
    // Finding a particular node in the list
    // 查找一个特殊位置的元素 O(n)
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
    // 插入新结点 O(1)
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
    // 移除首位结点 O(1)
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
    // 移除尾结点 O(n)
    @discardableResult
    public mutating func removeLast() -> Value? {
        
        // 1. 头结点为nil, 则没有要移除的结点
        guard let first = first else {
            return nil
        }
        
        // 2.如果只有一个结点，借用pop 来置头尾结点为nil
        guard first.next != nil else {
            return pop()
        }
        
        /// 3.从头向尾查找，如果有下一个结点，则继续遍历
        /// 直至找到最后一个结点 curr.next = nil,
        /// 此时 curr 为尾结点
        /// 此时 prev 为curr 的前驱
        var prev = first
        var curr = first
        while let next = curr.next {
            prev = curr
            curr = next
        }
        
        /// 4.此时 curr 为尾结点，断掉next 引用
        /// 将 last 引用指向 prev
        prev.next = nil
        last = prev
        
        return curr.val
    }
    
    /// Removing a particular node at a particular point in the list
    /// 移除指定结点相邻结点 O(1)
    @discardableResult
    public mutating func remove(after node: Node<Value>) -> Value? {
        defer {
            // 判断是否是尾结点
            if node.next === last {
                last = node
            }
            node.next = node.next?.next
        }
        return node.next?.val
    }
    
}


extension LinkedList: Collection {
    
    // 1. startIndex 即头结点
    public var startIndex: Index {
        return Index(node: first)
    }
    
    // 2. endIndex 作为一个最后一个可访问值之后的索引
    // 因此赋值 last?.next
    public var endIndex: Index {
        return Index(node: last?.next)
    }
    
    // 3. 下一个节点的索引
    public func index(after i: Index) -> Index {
        return Index(node: i.node?.next)
    }
    
    // 4. 下标用于将索引映射到集合中的值。
    // 因为已经创建了自定义索引，所以可以通过引用节点的值在恒定的时间内实现这一点。
    public subscript(position: Index) -> Value {
        return position.node!.val
    }
    
    public struct Index: Comparable {
        
        public var node: Node<Value>?
        
        static public func ==(lhs: Index, rhs: Index) -> Bool {
            switch (lhs.node, rhs.node) {
            case let (left?, right?):
                return left.next === right.next
            case (nil, nil):
                return true
            default:
                return false
            }
        }
        
        public static func < (lhs: LinkedList<Value>.Index, rhs: LinkedList<Value>.Index) -> Bool {
            guard lhs != rhs else {
                return false
            }
            
            let nodes = sequence(first: lhs.node) {$0?.next}
            return nodes.contains { $0 === rhs.node}
        }
        
    }
}
