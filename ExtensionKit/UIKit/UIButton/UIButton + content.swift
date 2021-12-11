//
//  UIButton + content.swift
//  ExtensionKit
//

import UIKit

public extension UIButton {
    func setContentEdgeInsetsWithSpacing(insets: UIEdgeInsets, spacing: CGFloat) {
        self.contentEdgeInsets = insets
        let insetAmount = spacing / 2
        imageEdgeInsets.left = -insetAmount
        imageEdgeInsets.right = insetAmount
        titleEdgeInsets.left = insetAmount
        titleEdgeInsets.right = -insetAmount
        contentEdgeInsets.left += insetAmount
        contentEdgeInsets.right += insetAmount
    }

    func alignVertical(spacing: Float = 4.0) {
        guard let imageSize = imageView?.image?.size,
            let text = titleLabel?.text,
            let font = titleLabel?.font else { return }
        titleEdgeInsets = UIEdgeInsets(top: 0.0, left: -imageSize.width,
                                       bottom: -(imageSize.height + CGFloat(spacing)), right: 0.0)
        let labelString = NSString(string: text)
        let titleSize = labelString.size(withAttributes: [.font: font])
        imageEdgeInsets = UIEdgeInsets(top: -(titleSize.height + CGFloat(spacing)), left: 0.0,
                                       bottom: 0.0, right: -titleSize.width)
        let edgeOffset = abs(titleSize.height - imageSize.height) / 2.0
        contentEdgeInsets = UIEdgeInsets(top: edgeOffset, left: 0.0, bottom: edgeOffset, right: 0.0)
    }

    func resetVerticalAlignment() {
        titleEdgeInsets = .zero
        imageEdgeInsets = .zero
        contentEdgeInsets = .zero
    }

    func mirroringContetnt(_ mirroring: Bool) {
        transform = CGAffineTransform(scaleX: mirroring ? -1 : 1, y: 1)
        titleLabel?.transform = CGAffineTransform(scaleX: mirroring ? -1 : 1, y: 1)
        imageView?.transform = CGAffineTransform(scaleX: mirroring ? -1 : 1, y: 1)
    }
}
