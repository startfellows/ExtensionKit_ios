//
//  Collection + first.swift
//  ExtensionKit
//

import Foundation

public extension Collection {
    
    func first<CheckType>(is: CheckType.Type = CheckType.self) -> Element? {
        return first(where: { $0 is CheckType })
    }
    
    func first<CheckType>(as type: CheckType.Type = CheckType.self) -> CheckType? {
        first(is: type) as? CheckType
    }
    
    func firstIndex<CheckType>(is: CheckType.Type = CheckType.self) -> Index? {
        return firstIndex(where: { $0 is CheckType })
    }
}
