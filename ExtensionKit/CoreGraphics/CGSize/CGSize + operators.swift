//
//  CGSize + operators.swift
//  ExtensionKit
//

import CoreGraphics

public extension CGSize {

    static func + (left: CGSize, right: CGSize) -> CGSize {
        return CGSize(width: left.width + right.width, height: left.width + right.width)
    }
    
    static  func - (left: CGSize, right: CGSize) -> CGSize {
        return CGSize(width: left.width - right.width, height: left.width - right.width)
    }
    
    static func * (left: CGSize, right: CGSize) -> CGSize {
        return CGSize(width: left.width * right.width, height: left.width * right.width)
    }
    
    static func / (left: CGSize, right: CGSize) -> CGSize {
        return CGSize(width: left.width / right.width, height: left.width / right.width)
    }
}

public extension CGSize {

    static func += (left: inout CGSize, right: CGSize) {
        left = left + right
    }
    
    static func -= (left: inout CGSize, right: CGSize) {
        left = left - right
    }
    
    static func *= (left: inout CGSize, right: CGSize) {
        left = left * right
    }
    
    static func /= (left: inout CGSize, right: CGSize) {
        left = left / right
    }
    
}


public extension CGSize {

    static func + (left: CGSize, right: CGFloat) -> CGSize {
        return CGSize(width: left.width + right, height: left.width + right)
    }
    
    static  func - (left: CGSize, right: CGFloat) -> CGSize {
        return CGSize(width: left.width - right, height: left.width - right)
    }
    
    static func * (left: CGSize, right: CGFloat) -> CGSize {
        return CGSize(width: left.width * right, height: left.width * right)
    }
    
    static func / (left: CGSize, right: CGFloat) -> CGSize {
        return CGSize(width: left.width / right, height: left.width / right)
    }
}
