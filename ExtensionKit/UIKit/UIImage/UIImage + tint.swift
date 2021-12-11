//
//  UIImage + tint.swift
//  ExtensionKit
//

import UIKit

public extension UIImage {
    func template() -> UIImage {
        return withRenderingMode(.alwaysTemplate)
    }
    
    func original() -> UIImage {
        return withRenderingMode(.alwaysOriginal)
    }
    
    func imageWithAlpha(alpha: CGFloat) -> UIImage {
        let format = UIGraphicsImageRendererFormat()
        let renderer = UIGraphicsImageRenderer(size: size, format: format)
        let image = renderer.image { _ in
            draw(at: .zero, blendMode: .normal, alpha: alpha)
        }
        return image
    }
}
