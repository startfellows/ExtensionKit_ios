//
//  String + validation.swift
//  ExtensionKit
//

import Foundation

public extension String {
    var isNumeric: Bool {
        return (self as NSString).rangeOfCharacter(from: CharacterSet.decimalDigits.inverted).location == NSNotFound
    }
}
