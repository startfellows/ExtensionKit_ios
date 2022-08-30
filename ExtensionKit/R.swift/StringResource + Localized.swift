//
//  StringResource + Localized.swift
//  ExtensionKit
//

import Foundation

public extension Locale {
    
    enum PluralRule: String {
        case zero, one, two, few, many, other
    }
    
    func localizedPluralRule(for count: Int) -> PluralRule? {
        return nil
    }
}

fileprivate extension String {
    func localized(pluralCount: Int? = nil) -> String {
        
        let localizationBundle = Bundle.main

        if let count = pluralCount, let pluralRule = Locale.current.localizedPluralRule(for: count) {

            let pluralKey = "\(self){\(pluralRule.rawValue)}"
            let string = localizationBundle.localizedString(forKey: pluralKey, value: "", table: nil)
            let pluralString = String(format: string, count)

            return pluralString
        } else {
            let string = localizationBundle.localizedString(forKey: self, value: "", table: nil)
            return string
        }
    }
}

import Rswift

public extension StringResource {
    var localized: String {
        return key.localized()
    }

    func localized(pluralCount: Int? = nil) -> String {
        return key.localized(pluralCount: pluralCount)
    }
    
    func localized(pluralCount: Int? = nil, format: CVarArg...) -> String {
        String(format: localized(pluralCount: pluralCount), format)
    }
}
