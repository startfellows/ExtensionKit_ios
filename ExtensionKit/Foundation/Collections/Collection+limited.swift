import Foundation

public extension Collection where Index: Comparable {
    func limited(_ maxIndex: Index) -> Self.SubSequence {
        let index = Swift.min(maxIndex, endIndex)
        return self[startIndex..<index]
    }
    
    func limited(_ maxIndex: Index) -> [Element] {
        .init(limited(maxIndex) as Self.SubSequence)
    }
}
