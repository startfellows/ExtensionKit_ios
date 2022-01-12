//
//  File.swift
//  ExtensionKit
//
//  Created by Кирилл on 12.01.2022.
//

import Rswift

public extension ImageResource {
    var template: UIImage? {
        UIImage(named: name, in: bundle, compatibleWith: nil)?.withRenderingMode(.alwaysTemplate)
    }
    
    var original: UIImage? {
        UIImage(named: name, in: bundle, compatibleWith: nil)?.withRenderingMode(.alwaysOriginal)
    }

}
