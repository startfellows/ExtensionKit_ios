import Foundation 

public extension Sequence {
    
    func first<ElementOfResult>(of type: ElementOfResult.Type) -> ElementOfResult? {
        return first(where: { $0 is ElementOfResult }) as? ElementOfResult
    }
}

public extension BidirectionalCollection {
    
    func last<ElementOfResult>(of type: ElementOfResult.Type) -> ElementOfResult? {
        return last(where: { $0 is ElementOfResult }) as? ElementOfResult
    }
}
