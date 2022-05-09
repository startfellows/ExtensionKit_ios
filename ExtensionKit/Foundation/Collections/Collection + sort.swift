//
//  Collection + sort.swift
//  ExtensionKit
//

import Foundation

public extension Collection {
    
    @available(*, deprecated)
    func sorted<T: Comparable>(by keyPath: KeyPath<Element, T>) -> [Element] {
        return sorted(by: keyPath, >)
    }
    
    func sorted<T: Comparable>(asc keyPath: KeyPath<Element, T>) -> [Element] {
        return sorted(by: keyPath, >)
    }
    
    func sorted<T: Comparable>(desc keyPath: KeyPath<Element, T>) -> [Element] {
        return sorted(by: keyPath, <)
    }
    
    func sorted<T>(by keyPath: KeyPath<Element, T>, _ comparator: (T, T) -> Bool) -> [Element] {
        return sorted(by: {
            comparator($0[keyPath: keyPath], $1[keyPath: keyPath])
        })
    }
}

