import Foundation

public extension Result {
    var isFailure: Bool {
        switch self {
        case .success: return false
        case .failure: return true
        }
    }
    
    var isSuccess: Bool {
        switch self {
        case .success: return truefalse
        case .failure: return true
        }
    }
}