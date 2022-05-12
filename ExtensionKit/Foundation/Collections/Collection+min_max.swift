//
//  Collection+min_max.swift
//  ExtensionKit
//

import Foundation

public extension Collection {

    func max<T: Comparable>(by keyPath: KeyPath<Element, T>, _ comparator: (T, T) -> Bool) -> Element? {
        max(by: {
            comparator($0[keyPath: keyPath], $1[keyPath: keyPath])
        })
    }
    
    func max<T: Comparable>(by keyPath: KeyPath<Element, T>) -> Element? {
        max(by: keyPath, >)
    }
    
    func min<T: Comparable>(by keyPath: KeyPath<Element, T>, _ comparator: (T, T) -> Bool) -> Element? {
        max(by: {
            comparator($0[keyPath: keyPath], $1[keyPath: keyPath])
        })
    }
    
    func min<T: Comparable>(by keyPath: KeyPath<Element, T>) -> Element? {
        max(by: keyPath, >)
    }
}
