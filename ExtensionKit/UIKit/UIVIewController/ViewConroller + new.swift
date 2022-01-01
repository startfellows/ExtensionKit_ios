//
//  ViewConroller + new.swift
//  ExtensionKit
//

import UIKit

extension UIViewController {
    
    static func newController(withView view: UIView, frame: CGRect) -> UIViewController {
        view.frame = frame
        let controller = UIViewController()
        controller.view = view
        return controller
    }
    
}
