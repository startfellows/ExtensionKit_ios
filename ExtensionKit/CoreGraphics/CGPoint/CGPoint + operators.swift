//
//  CGPoint + operators.swift
//  ExtensionKit
//

import CoreGraphics

public extension CGPoint {

    static func + (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x + right.x, y: left.y + right.y)
    }
    
    static  func - (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x - right.x, y: left.y - right.y)
    }
    
    static func * (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x * right.x, y: left.y * right.y)
    }
    
    static func / (left: CGPoint, right: CGPoint) -> CGPoint {
        return CGPoint(x: left.x / right.x, y: left.y / right.y)
    }
}

public extension CGPoint {

    static func += (left: inout CGPoint, right: CGPoint) {
        left = left + right
    }
    
    static func -= (left: inout CGPoint, right: CGPoint) {
        left = left - right
    }
    
    static func *= (left: inout CGPoint, right: CGPoint) {
        left = left * right
    }
    
    static func /= (left: inout CGPoint, right: CGPoint) {
        left = left / right
    }
    
}

public extension CGPoint {

    static func + (left: CGPoint, right: CGFloat) -> CGPoint {
        return CGPoint(x: left.x + right, y: left.y + right)
    }
    
    static  func - (left: CGPoint, right: CGFloat) -> CGPoint {
        return CGPoint(x: left.x - right, y: left.y - right)
    }
    
    static func * (left: CGPoint, right: CGFloat) -> CGPoint {
        return CGPoint(x: left.x * right, y: left.y * right)
    }
    
    static func / (left: CGPoint, right: CGFloat) -> CGPoint {
        return CGPoint(x: left.x / right, y: left.y / right)
    }
}

public extension CGPoint {

    static func += (left: inout CGPoint, right: CGFloat) {
        left = left + right
    }
    
    static func -= (left: inout CGPoint, right: CGFloat) {
        left = left - right
    }
    
    static func *= (left: inout CGPoint, right: CGFloat) {
        left = left * right
    }
    
    static func /= (left: inout CGPoint, right: CGFloat) {
        left = left / right
    }
    
}
