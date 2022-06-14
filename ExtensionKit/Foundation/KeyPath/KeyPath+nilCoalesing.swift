import Foundation

public extension KeyPath {
    
    // MARK: - Combine keypaths with keypaths
    @inlinable @inline(__always)
    static func ??(lhs: KeyPath<Root, Value?>, rhs: KeyPath) -> Equation<Root, Value> {
        return { $0[keyPath: lhs] ?? $0[keyPath: rhs] }
    }
    
    @inlinable @inline(__always)
    static func ??(lhs: KeyPath<Root, Value?>, rhs: KeyPath<Root, Value?>) -> Equation<Root, Value?> {
        return { $0[keyPath: lhs] ?? $0[keyPath: rhs] }
    }
    
    @inlinable @inline(__always)
    static func ??(lhs: KeyPath<Root, Value?>, rhs: Value) -> Equation<Root, Value> {
        return { $0[keyPath: lhs] ?? rhs }
    }
    
    @inlinable @inline(__always)
    static func ??(lhs: KeyPath<Root, Value?>, rhs: Value?) -> Equation<Root, Value?> {
        return { $0[keyPath: lhs] ?? rhs }
    }
}

@inlinable @inline(__always)
public func ??<T, V>(lhs: @escaping Equation<T, V?>, rhs: V) -> Equation<T, V> {
    return { lhs($0) ?? rhs }
}

@inlinable @inline(__always)
public func ??<T, V>(lhs: @escaping Equation<T, V?>, rhs: V?) -> Equation<T, V?> {
    return { lhs($0) ?? rhs }
}
