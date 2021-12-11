//
//  AutoresizingMask + templates.swift
//  ExtensionKit
//

import UIKit

public extension UIView.AutoresizingMask {
    static var flexibleSize: UIView.AutoresizingMask {
        return [.flexibleWidth, .flexibleHeight]
    }

    static var flexibleMargins: UIView.AutoresizingMask {
        return [.flexibleLeftMargin, .flexibleTopMargin, .flexibleRightMargin, .flexibleBottomMargin]
    }
}
