//
//  Collection+subscript.swift
//  ExtensionKit
//

import Foundation

public extension Collection {
    func at(_ index: Index) -> Element? {
        guard index >= self.startIndex,
              index <= self.endIndex
        else { return nil }

        return self[index]
    }
    
    subscript(safe index: Index) -> Element? {
        at(index)
    }
}
