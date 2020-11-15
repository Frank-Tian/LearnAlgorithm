//
//  206-反转链表.swift
//  链表
//
//  Created by Tian on 2020/11/12.
//

import Foundation

func reverseLinkedList(_ head: LinkedNode?) -> LinkedNode? {
    
    var head = head
    var newH: LinkedNode?
    
    while head != nil {
        let tmp = head?.next
        head?.next = newH
        newH = head
        head = tmp
    }
    return newH
}
