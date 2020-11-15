//
//  main.swift
//  链表
//
//  Created by Tian on 2020/11/12.
//

import Foundation
import leetcode_swift

print("Hello, World!")

// 创建linkedList
let head = LinkedNode.create([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])

// 输出linkedList
LinkedNode.printList(head)

// 反转后输出
LinkedNode.printList(reverseLinkedList(head))
