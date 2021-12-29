//
//  CGPoint + init.swift
//  ExtensionKit
//

import CoreGraphics

extension CGPoint {
    init(_ size: CGSize) {
        self.init(x: size.width, y: size.height)
    }
}
