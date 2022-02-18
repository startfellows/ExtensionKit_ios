//
//  KeyPath + operators.swift
//  ExtensionKit
//

import Foundation

public typealias Equation<T, V> = (T) -> V

public extension KeyPath where Value: Numeric {
    // MARK: - Combine keypaths with keypaths
    static func +(lhs: KeyPath, rhs: KeyPath) -> Equation<Root, Value> {
        return { $0[keyPath: lhs] + $0[keyPath: rhs] }
    }

    static func -(lhs: KeyPath, rhs: KeyPath) -> Equation<Root, Value> {
        return { $0[keyPath: lhs] - $0[keyPath: rhs] }
    }

    static func *(lhs: KeyPath, rhs: KeyPath) -> Equation<Root, Value> {
        return { $0[keyPath: lhs] * $0[keyPath: rhs] }
    }
    
    // MARK: - Combine keypaths with values
    static func +(lhs: KeyPath, rhs: Value) -> Equation<Root, Value> {
        return { $0[keyPath: lhs] + rhs }
    }

    static func -(lhs: KeyPath, rhs: Value) -> Equation<Root, Value> {
        return { $0[keyPath: lhs] - rhs }
    }

    static func *(lhs: KeyPath, rhs: Value) -> Equation<Root, Value> {
        return { $0[keyPath: lhs] * rhs }
    }
}
public extension KeyPath where Value: FloatingPoint {
    
    // MARK: - Combine keypaths with keypaths
    static func /(lhs: KeyPath, rhs: KeyPath) -> Equation<Root, Value> {
        return { $0[keyPath: lhs] / $0[keyPath: rhs] }
    }
    
    // MARK: - Combine keypaths with values
    static func /(lhs: KeyPath, rhs: Value) -> Equation<Root, Value> {
        return { $0[keyPath: lhs] / rhs }
    }
}

// MARK: - Combine Equation with Equation
public func +<T, V: Numeric>(lhs: @escaping Equation<T,V>, rhs: @escaping Equation<T,V>) -> Equation<T,V> {
    return { lhs($0) + rhs($0) }
}
public func -<T, V: Numeric>(lhs: @escaping Equation<T,V>, rhs: @escaping Equation<T,V>) -> Equation<T,V> {
    return { lhs($0) - rhs($0) }
}
public func *<T, V: Numeric>(lhs: @escaping Equation<T,V>, rhs: @escaping Equation<T,V>) -> Equation<T,V> {
    return { lhs($0) * rhs($0) }
}
public func /<T, V: FloatingPoint>(lhs: @escaping Equation<T,V>, rhs: @escaping Equation<T,V>) -> Equation<T,V> {
    return { lhs($0) / rhs($0) }
}
// MARK: - Combine Equation with Equation

public func +<T, V: Numeric>(lhs: @escaping Equation<T,V>, rhs: V) -> Equation<T,V> {
    return { lhs($0) + rhs }
}
public func -<T, V: Numeric>(lhs: @escaping Equation<T,V>, rhs: V) -> Equation<T,V> {
    return { lhs($0) - rhs }
}
public func *<T, V: Numeric>(lhs: @escaping Equation<T,V>, rhs: V) -> Equation<T,V> {
    return { lhs($0) * rhs }
}
public func /<T, V: FloatingPoint>(lhs: @escaping Equation<T,V>, rhs: V) -> Equation<T,V> {
    return { lhs($0) / rhs }
}

// MARK: - Collections
public extension KeyPath where Value: RangeReplaceableCollection {
    static func +(lhs: KeyPath, rhs: KeyPath) -> Equation<Root, Value> {
        return { $0[keyPath: lhs] + $0[keyPath: rhs] }
    }
    
    static func +(lhs: KeyPath, rhs: Value) -> Equation<Root, Value> {
        return { $0[keyPath: lhs] + rhs }
    }
}

// MARK: - Optionals
public extension KeyPath {
    static func ??(lhs: KeyPath<Root, Value?>, rhs: Value) -> Equation<Root, Value> {
        return { $0[keyPath: lhs] ?? rhs }
    }
    
    static func ??(lhs: KeyPath<Root, Value?>, rhs: Value?) -> Equation<Root, Value?> {
        return { $0[keyPath: lhs] ?? rhs }
    }
    
    static func ??(lhs: KeyPath<Root, Value?>, rhs: KeyPath<Root, Value>) -> Equation<Root, Value> {
        return { $0[keyPath: lhs] ?? $0[keyPath: rhs] }
    }
    
    static func ??(lhs: KeyPath<Root, Value?>, rhs: KeyPath<Root, Value?>) -> Equation<Root, Value?> {
        return { $0[keyPath: lhs] ?? $0[keyPath: rhs] }
    }
}
