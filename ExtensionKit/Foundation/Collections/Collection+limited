
public extension Collection where Index: Comparable {
    func limited(_ maxIndex: Index) -> Self.SubSequence {
        let index = Swift.min(maxIndex, endIndex)
        return self[startIndex..<index]
    }
}
