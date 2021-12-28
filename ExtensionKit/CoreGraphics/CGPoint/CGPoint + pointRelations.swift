//
//  CGPoint + pointRelations.swift
//  ExtensionKit
//

import CoreGraphics

public extension CGPoint {
    func distance(to other: CGPoint) -> CGFloat {
        return sqrt(pow(x - other.x, 2) + pow(y - other.y, 2))
    }
    
    func angle(to point: CGPoint) -> CGFloat {
        return atan2(point.y - y, point.x - x)
    }
}
