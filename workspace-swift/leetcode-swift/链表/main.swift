//
//  main.swift
//  链表
//
//  Created by Tian on 2020/11/12.
//

import Foundation

print("Hello, World!")

// 创建linkedList
let head = Node.create([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])

print(head) // 0 -> 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> 8 -> 9

// 反转后输出
print(Node.reverseLinkedList(head) as Any)  // Optional(9 -> 8 -> 7 -> 6 -> 5 -> 4 -> 3 -> 2 -> 1 -> 0         )

// ---------------------------------------------

let node1 = Node(val: 1)
let node2 = Node(val: 2)
let node3 = Node(val: 3)
let node4 = Node(val: 4)

node1.next = node2
node2.next = node3
node3.next = node4
print(node1)    // 1 -> 2 -> 3 -> 4

let node5 = Node(val: "a")
let node6 = Node(val: "b")
node5.next = node6
print(node5)    // a -> b

print(Node.reverseLinkedList(node5) as Any) // Optional(b -> a )

// ---------------------------------------------

var linkedList = LinkedList<Int>()
for i in 0..<10 {
    linkedList.push(i)
}
print(linkedList)   // 9 -> 8 -> 7 -> 6 -> 5 -> 4 -> 3 -> 2 -> 1 -> 0

var linkedList2 = LinkedList<Int>()
for i in 10..<20 {
    linkedList2.append(i)
}
print(linkedList2)   // 10 -> 11 -> 12 -> 13 -> 14 -> 15 -> 16 -> 17 -> 18 -> 19

// ---------------------------------------------

let pickNode = linkedList2.node(at: 5)!
let insertNode = linkedList2.insert(100, after: pickNode)
print(insertNode)   // 100 -> 16 -> 17 -> 18 -> 19
print(linkedList2)  // 10 -> 11 -> 12 -> 13 -> 14 -> 15 -> 100 -> 16 -> 17 -> 18 -> 19

// ---------------------------------------------

let popValue = linkedList2.pop()
print(popValue!)    // 10
print(linkedList2)  // 11 -> 12 -> 13 -> 14 -> 15 -> 100 -> 16 -> 17 -> 18 -> 19



