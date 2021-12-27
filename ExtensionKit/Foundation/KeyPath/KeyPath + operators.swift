//
//  KeyPath + operators.swift
//  ExtensionKit
//

import Foundation

public typealias Equation<T, V> = (T) -> V

// MARK: - Combine keypaths with keypaths
public func +<T, V: Numeric>(lhs: KeyPath<T, V>, rhs: KeyPath<T, V>) -> Equation<T, V> {
    return { $0[keyPath: lhs] + $0[keyPath: rhs] }
}

public func -<T, V: Numeric>(lhs: KeyPath<T, V>, rhs: KeyPath<T, V>) -> Equation<T, V> {
    return { $0[keyPath: lhs] - $0[keyPath: rhs] }
}

public func *<T, V: Numeric>(lhs: KeyPath<T, V>, rhs: KeyPath<T, V>) -> Equation<T, V> {
    return { $0[keyPath: lhs] * $0[keyPath: rhs] }
}

public func /<T, V: FloatingPoint>(lhs: KeyPath<T, V>, rhs: KeyPath<T, V>) -> Equation<T, V> {
    return { $0[keyPath: lhs] / $0[keyPath: rhs] }
}

// MARK: - Combine keypaths with values
public func +<T, V: Numeric>(lhs: KeyPath<T, V>, rhs: V) -> Equation<T, V> {
    return { $0[keyPath: lhs] + rhs }
}

public func -<T, V: Numeric>(lhs: KeyPath<T, V>, rhs: V) -> Equation<T, V> {
    return { $0[keyPath: lhs] - rhs }
}

public func *<T, V: Numeric>(lhs: KeyPath<T, V>, rhs: V) -> Equation<T, V> {
    return { $0[keyPath: lhs] * rhs }
}

public func /<T, V: FloatingPoint>(lhs: KeyPath<T, V>, rhs: V) -> Equation<T, V> {
    return { $0[keyPath: lhs] / rhs }
}

// MARK: - Collections
public func +<T, V: RangeReplaceableCollection>(lhs: KeyPath<T, V>, rhs: KeyPath<T, V>) -> Equation<T, V> {
    return { $0[keyPath: lhs] + $0[keyPath: rhs] }
}

// MARK: - Optionals
public func ??<T, V>(lhs: KeyPath<T, V?>, rhs: V) -> Equation<T, V> {
    return { $0[keyPath: lhs] ?? rhs }
}

public func ??<T, V>(lhs: KeyPath<T, V?>, rhs: V?) -> Equation<T, V?> {
    return { $0[keyPath: lhs] ?? rhs }
}

public func ??<T, V>(lhs: KeyPath<T, V?>, rhs: KeyPath<T, V>) -> Equation<T, V> {
    return { $0[keyPath: lhs] ?? $0[keyPath: rhs] }
}

public func ??<T, V>(lhs: KeyPath<T, V?>, rhs: KeyPath<T, V?>) -> Equation<T, V?> {
    return { $0[keyPath: lhs] ?? $0[keyPath: rhs] }
}
