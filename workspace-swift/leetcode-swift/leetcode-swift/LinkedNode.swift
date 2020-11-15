//
//  LinkedNode.swift
//  Linked Node
//
//  Created by Tian on 2020/11/8.
//

import Cocoa

class LinkedNode: NSObject {

    public var val: Int
    public var next: LinkedNode?
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    class func create(_ arr: [Int]? , asc: Bool = true) -> LinkedNode? {
        guard let arr = arr else {
            return nil
        }
        var head:LinkedNode = LinkedNode(arr[0])
        if asc {
            var last = head
            var p: LinkedNode!
            for i in 0..<arr.count {
                p = LinkedNode(arr[i])
                last.next = p
                p.next = nil
                last = p
            }
            p = head
            head = head.next!
        } else {
            for i in 1..<arr.count {
                let p = LinkedNode(arr[i])
                p.next = head
                head = p
            }
        }
        return head
    }
    
    class func printList(_ head: LinkedNode?) {
        var head = head
        var res = ""
        while head != nil {
            res += "\(head?.val ?? -1) "
            head = head?.next
        }
        print(res)
    }
}
