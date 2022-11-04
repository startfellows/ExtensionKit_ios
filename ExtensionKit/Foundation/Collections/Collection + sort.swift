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
    
    func sorted<T: Comparable>(by keyPath: KeyPath<Element, T>, _ comparator: (T, T) -> Bool) -> [Element] {
        return sorted(by: {
            comparator($0[keyPath: keyPath], $1[keyPath: keyPath])
        })
    }
}

public extension Collection {

    func sorted<T: Comparable>(asc equation: Equation<Element, T>) -> [Element] {
        return sorted(by: equation, >)
    }
    
    func sorted<T: Comparable>(desc equation: Equation<Element, T>) -> [Element] {
        return sorted(by: equation, <)
    }
    
    func sorted<T>(by equation: Equation<Element, T>, _ comparator: (T, T) -> Bool) -> [Element] {
        return sorted(by: {
            comparator(equation($0), equation($1))
        })
    }
}


public extension Collection {

    func sorted(asc equation: Equation<Element, Bool>) -> [Element] {
        return sorted(by: equation, { !$1 })
    }
    
    func sorted(desc equation: Equation<Element, Bool>) -> [Element] {
        return sorted(by: equation, { $1 })
    }
}

public extension Collection {
    
    func sorted(asc keyPath: KeyPath<Element, Bool>) -> [Element] {
        return sorted(by: keyPath, { !$1 })
    }
    
    func sorted(desc keyPath: KeyPath<Element, Bool>) -> [Element] {
        return sorted(by: keyPath, { $1 })
    }
}


