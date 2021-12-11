//
//  UIImage + view.swift
//  ExtensionKit
//

import UIKit

public extension UIImage {
    convenience init?(view: UIView) {
        let format = UIGraphicsImageRendererFormat()
        let renderer = UIGraphicsImageRenderer(size: view.bounds.size, format: format)
        let image = renderer.image { _ in
            view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
        }
        guard let cgImage = image.cgImage else { return nil }
        self.init(cgImage: cgImage, scale: format.scale, orientation: .up)
    }
}
