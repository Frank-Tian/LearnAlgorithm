//
//  List.swift
//  leetcode-swift
//
//  Created by Tian on 2020/11/18.
//

import Foundation

public protocol ListProtocol {

    associatedtype Element

    /// 元素的数量
    var count: Int { get }
    
    /// 是否为空
    var isEmpty: Bool { get }

    /// 是否包含某个元素
    func contains(_ element: Element) -> Bool
    
    /// 获取 index 对应位置的元素
    /// - Parameter index: 下标位置
    func get(index: Int) -> Element?
    
    /// 设置 index 对应位置的元素
    /// - Parameters:
    ///   - obj: 元素
    ///   - index: 位置下标
    func set(element: Element, at index: Int) -> Element?
    
    /// 添加元素到最后
    func add(_ element: Element)
    
    /// 往 index 位置添加元素
    /// - Parameters:
    ///   - obj: 元素
    ///   - index: 位置下标
    func add(element: Element, at index: Int)
    
    /// 删除 index 位置对应的元素
    /// - Parameter index: 位置下标
    func remove(at index: Int) -> Element?
    
    /// 查看元素的位置
    /// - Parameter obj: 元素
    func indexOf(element: Element) -> Element?
    
    /// 清除所有元素
    func clear()
}
