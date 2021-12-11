//
//  UIEdgeInsets + init.swift
//  ExtensionKit
//

import UIKit

public extension UIEdgeInsets {
    init(x: CGFloat, y: CGFloat) {
        self.init(top: y, left: x, bottom: y, right: x)
    }
    
    init(_ inset: CGFloat) {
        self.init(top: inset, left: inset, bottom: inset, right: inset)
    }
}
