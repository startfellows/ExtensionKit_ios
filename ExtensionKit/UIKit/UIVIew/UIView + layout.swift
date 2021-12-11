//
//  UIView + constraints.swift
//  ExtensionKit
//

import UIKit

public extension UIView {
    
    func systemLayoutSizeFittingWidth(_ width: CGFloat) -> CGSize {
        let fittingSize = CGSize(width: width, height: 0)
        let newSize = self.systemLayoutSizeFitting(fittingSize,
                                                   withHorizontalFittingPriority: .required,
                                                   verticalFittingPriority: .fittingSizeLevel)
        return newSize
    }
    
    func frame(in view: UIView) -> CGRect {
        view.convert(self.bounds, from: self)
    }
}
