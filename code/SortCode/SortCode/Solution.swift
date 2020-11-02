//
//  Solution.swift
//  SortCode
//
//  Created by Tian on 2020/10/2.
//

import Cocoa

class Solution: NSObject {

    func printArr(_ arr:[Int]) {
        print(arr)
    }
    
    func buboSort(_ arr:inout [Int]) -> [Int] {
        for i in 0..<arr.count {
            for j in 0..<arr.count - i - 1 {
                if arr[j] > arr[j+1] {
                    let t = arr[j]
                    arr[j] = arr[j+1]
                    arr[j+1] = t
                }
            }
        }
        return arr
    }
    
}
