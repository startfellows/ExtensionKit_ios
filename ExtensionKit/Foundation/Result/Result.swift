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
        case .success: return true
        case .failure: return false
        }
    }
}

public extension Result where Success == Void {
    static var success: Self { .success(()) }
}

public extension Result where Success == Any? {
    static var success: Self { .success(nil) }
}
