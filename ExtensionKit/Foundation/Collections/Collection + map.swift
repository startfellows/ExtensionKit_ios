//
//  Collection + map.swift
//  ExtensionKit
//

import Foundation

public extension Collection {
  
    func compact<T>() -> [T] where Element == T? {
        return self.compactMap({ $0 })
    }

    func compactMap<ElementOfResult>(as type: ElementOfResult.Type) -> [ElementOfResult] {
        return compactMap({ $0 as? ElementOfResult })
    }
  
    func filter<CheckType>(is: CheckType.Type = CheckType.self) -> [Element] {
        return filter({ $0 is CheckType })
    }
  
}
