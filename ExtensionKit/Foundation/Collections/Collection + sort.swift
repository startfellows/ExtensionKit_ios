//
//  Collection + sort.swift
//  ExtensionKit
//

import Foundation

public extension Collection {
    func sorted<T: Comparable>(by keyPath: KeyPath<Element, T>) -> [Element] {
        return sorted(by: {
            $0[keyPath: keyPath] > $1[keyPath: keyPath]
        })
    }
    
    func sorted<T: Comparable>(by keyPath: KeyPath<Element, T>, _ comparator: (T, T) -> Bool) -> [Element] {
        return sorted(by: {
            comparator($0[keyPath: keyPath], $1[keyPath: keyPath])
        })
    }
}
