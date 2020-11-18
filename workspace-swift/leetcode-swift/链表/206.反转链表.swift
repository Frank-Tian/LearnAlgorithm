//
//  206-反转链表.swift
//  链表
//
//  Created by Tian on 2020/11/12.
//

import Foundation

extension Node {
    class func reverseLinkedList(_ head: Node?) -> Node? {
        
        var head = head
        var newH: Node?
        
        while head != nil {
            let tmp = head?.next
            head?.next = newH
            newH = head
            head = tmp
        }
        return newH
    }
}
