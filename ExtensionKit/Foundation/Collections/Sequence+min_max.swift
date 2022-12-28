//
//  Sequence+min_max.swift
//  ExtensionKit
//

import Foundation

public extension Sequence {

    func max<T: Comparable>(by keyPath: KeyPath<Element, T>, _ comparator: (T, T) -> Bool) -> Element? {
        self.max(by: {
            comparator($0[keyPath: keyPath], $1[keyPath: keyPath])
        })
    }
    
    func max<T: Comparable>(by keyPath: KeyPath<Element, T>) -> Element? {
        self.max(by: keyPath, >)
    }
    
    func min<T: Comparable>(by keyPath: KeyPath<Element, T>, _ comparator: (T, T) -> Bool) -> Element? {
        self.min(by: {
            comparator($0[keyPath: keyPath], $1[keyPath: keyPath])
        })
    }
    
    func min<T: Comparable>(by keyPath: KeyPath<Element, T>) -> Element? {
        self.min(by: keyPath, >)
    }
}
