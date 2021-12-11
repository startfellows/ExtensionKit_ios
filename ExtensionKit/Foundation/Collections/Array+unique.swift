//
//  Array+unique.swift
//  ExtensionKit
//

import Foundation

public extension Array where Element: Hashable {
    func unique() -> Self {
        Array(Set(self))
    }
}
