//
//  Node.swift
//  链表
//
//  Created by Tian on 2020/11/18.
//

import Foundation

public class Node<Value> {
    
    public var val: Value
    public var next: Node?
    
    public init(val: Value, next: Node? = nil) {
        self.val = val
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    
    public var description: String {
        guard let next = next else {
            return "\(val)"
        }
        return "\(val) -> " + String(describing: next) + " "
    }
}

extension Node {
    
    class func create(_ arr: [Value] , asc: Bool = true) -> Node {
        
        var head:Node = Node(val: arr[0])
        if asc {
            var last = head
            var p: Node!
            for i in 0..<arr.count {
                p = Node(val: arr[i])
                last.next = p
                p.next = nil
                last = p
            }
            p = head
            head = head.next!
        } else {
            for i in 1..<arr.count {
                let p = Node(val: arr[i])
                p.next = head
                head = p
            }
        }
        return head
    }
}
