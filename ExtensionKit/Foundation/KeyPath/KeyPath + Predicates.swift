//
//  KeyPath.swift
//  ExtensionKit
//

import Foundation

public typealias Predicate<T> = Equation<T,Bool>

// MARK: - Combine keypaths with keypaths
public prefix func !<T>(keyPath: KeyPath<T, Bool>) -> Predicate<T> {
    return { !$0[keyPath: keyPath] }
}

public func ==<T, V: Equatable>(lhs: KeyPath<T, V>, rhs: KeyPath<T, V>) -> Predicate<T> {
    return { $0[keyPath: lhs] == $0[keyPath: rhs] }
}

public func !=<T, V: Equatable>(lhs: KeyPath<T, V>, rhs: KeyPath<T, V>) -> Predicate<T> {
    return { $0[keyPath: lhs] != $0[keyPath: rhs] }
}

public func ><T, V: Comparable>(lhs: KeyPath<T, V>, rhs: KeyPath<T, V>) -> Predicate<T> {
    return { $0[keyPath: lhs] > $0[keyPath: rhs] }
}

public func <<T, V: Comparable>(lhs: KeyPath<T, V>, rhs: KeyPath<T, V>) -> Predicate<T> {
    return { $0[keyPath: lhs] < $0[keyPath: rhs] }
}

// MARK: - Combine keypaths with values
public func ==<T, V: Equatable>(lhs: KeyPath<T, V>, rhs: V) -> Predicate<T> {
    return { $0[keyPath: lhs] == rhs }
}

public func !=<T, V: Equatable>(lhs: KeyPath<T, V>, rhs: V) -> Predicate<T> {
    return { $0[keyPath: lhs] != rhs }
}

public func ><T, V: Comparable>(lhs: KeyPath<T, V>, rhs: V) -> Predicate<T> {
    return { $0[keyPath: lhs] > rhs }
}

public func <<T, V: Comparable>(lhs: KeyPath<T, V>, rhs: V) -> Predicate<T> {
    return { $0[keyPath: lhs] < rhs }
}

// MARK: - Combine Predicates with keypaths
public func &&<T>(lhs: @escaping Predicate<T>, rhs: KeyPath<T, Bool>) -> Predicate<T> {
    return { lhs($0) && $0[keyPath: rhs] }
}

public func ||<T>(lhs: @escaping Predicate<T>, rhs: KeyPath<T, Bool>) -> Predicate<T> {
    return { lhs($0) || $0[keyPath: rhs] }
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

