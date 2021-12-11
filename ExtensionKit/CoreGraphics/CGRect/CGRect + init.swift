//
//  CGRect + init.swift
//  ExtensionKit
//

import CoreGraphics

public extension CGRect {
    init(size: CGSize) {
        self.init(origin: .zero, size: size)
    }

    init(side: CGFloat) {
        self.init(size: CGSize(side: side))
    }

    init(width: CGFloat, height: CGFloat) {
        self.init(size: CGSize(width: width, height: height))
    }
}
