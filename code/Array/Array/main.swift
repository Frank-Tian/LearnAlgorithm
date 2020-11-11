//
//  main.swift
//  Array
//
//  Created by Tian on 2020/11/9.
//

import Foundation

print("Hello, World!")


var arr = DynamicArray.init(capacity: 10)
arr.add(element: 1, at: 5)
//arr.add(element: 10, at: 20)
arr.remove(at: 6)
arr.printArr()
