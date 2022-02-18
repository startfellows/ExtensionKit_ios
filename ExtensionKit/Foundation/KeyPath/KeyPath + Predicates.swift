//
//  KeyPath.swift
//  ExtensionKit
//

import Foundation

public typealias Predicate<T> = Equation<T, Bool>

public extension KeyPath where Value: Equatable {
    // MARK: - Combine keypaths with keypath
    static func ==(lhs: KeyPath, rhs: KeyPath) -> Predicate<Root> {
        return { $0[keyPath: lhs] == $0[keyPath: rhs] }
    }
    
    static func !=(lhs: KeyPath, rhs: KeyPath) -> Predicate<Root> {
        return { $0[keyPath: lhs] != $0[keyPath: rhs] }
    }
    
    static func ==(lhs: KeyPath, rhs: KeyPath<Root, Value?>) -> Predicate<Root> {
        return { $0[keyPath: lhs] == $0[keyPath: rhs] }
    }
    
    static func !=(lhs: KeyPath, rhs: KeyPath<Root, Value?>) -> Predicate<Root> {
        return { $0[keyPath: lhs] != $0[keyPath: rhs] }
    }
    
    // MARK: - Combine keypaths with values
    static func ==(lhs: KeyPath, rhs: Value) -> Predicate<Root> {
        return { $0[keyPath: lhs] == rhs }
    }
    
    static func !=(lhs: KeyPath, rhs: Value) -> Predicate<Root> {
        return { $0[keyPath: lhs] != rhs }
    }
    
    // MARK: - Combine keypaths with optionals
    static func ==(lhs: KeyPath, rhs: Value?) -> Predicate<Root> {
        return { $0[keyPath: lhs] == rhs }
    }
    
    static func !=(lhs: KeyPath, rhs: Value?) -> Predicate<Root> {
        return { $0[keyPath: lhs] != rhs }
    }
    
    static func ==(lhs: KeyPath<Root, Value?>, rhs: Value) -> Predicate<Root> {
        return { $0[keyPath: lhs] == rhs }
    }

    static func !=(lhs: KeyPath<Root, Value?>, rhs: Value) -> Predicate<Root> {
        return { $0[keyPath: lhs] != rhs }
    }
}
    
public extension KeyPath where Value: AnyObject {
    // MARK: - Combine keypaths with objects
    static func ===(lhs: KeyPath, rhs: Value) -> Predicate<Root> {
        return { $0[keyPath: lhs] === rhs }
    }
    
    static func !==(lhs: KeyPath, rhs: Value) -> Predicate<Root> {
        return { $0[keyPath: lhs] !== rhs }
    }
    
}

public extension KeyPath where Value: Comparable {
    // MARK: - Combine keypaths with keypath
    static func >(lhs: KeyPath, rhs: KeyPath) -> Predicate<Root> {
        return { $0[keyPath: lhs] > $0[keyPath: rhs] }
    }
    
    static func <(lhs: KeyPath, rhs: KeyPath) -> Predicate<Root> {
        return { $0[keyPath: lhs] < $0[keyPath: rhs] }
    }
    
    // MARK: - Combine keypaths with values
    static func ><T, V: Comparable>(lhs: KeyPath<T, V>, rhs: V) -> Predicate<T> {
        return { $0[keyPath: lhs] > rhs }
    }
    
    static func <<T, V: Comparable>(lhs: KeyPath<T, V>, rhs: V) -> Predicate<T> {
        return { $0[keyPath: lhs] < rhs }
    }
}
    
public extension KeyPath where Value == Bool {
    // MARK: - Combine keypaths with keypaths
    static prefix func !(keyPath: KeyPath<Root, Value>) -> Predicate<Root> {
        return { !$0[keyPath: keyPath] }
    }
    
    // MARK: - Combine Predicates with keypaths
    static func &&(lhs: @escaping Predicate<Root>, rhs: KeyPath<Root, Value>) -> Predicate<Root> {
        return { lhs($0) && $0[keyPath: rhs] }
    }
    
    static func ||(lhs: @escaping Predicate<Root>, rhs: KeyPath<Root, Value>) -> Predicate<Root> {
        return { lhs($0) || $0[keyPath: rhs] }
    }
}

// MARK: - Combine Predicates with Predicates
public prefix func !<T>(predicate: @escaping Predicate<T>) -> Predicate<T> {
    return { !predicate($0) }
}

public func &&<T>(lhs: @escaping Predicate<T>, rhs: @escaping Predicate<T>) -> Predicate<T> {
    return { lhs($0) && rhs($0) }
}

public func ||<T>(lhs: @escaping Predicate<T>, rhs: @escaping Predicate<T>) -> Predicate<T> {
    return { lhs($0) || rhs($0) }
}
