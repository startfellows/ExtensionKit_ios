//
//  Collection + sort.swift
//  ExtensionKit
//

import Foundation

public extension Collection {
    func sorted<T: Comparable>(asc keyPath: KeyPath<Element, T>) -> [Element] {
        return sorted(by: {
            $0[keyPath: keyPath] > $1[keyPath: keyPath]
        })
    }
    
    func sorted<T: Comparable>(desc keyPath: KeyPath<Element, T>) -> [Element] {
        return sorted(by: {
            $0[keyPath: keyPath] < $1[keyPath: keyPath]
        })
    }
}
