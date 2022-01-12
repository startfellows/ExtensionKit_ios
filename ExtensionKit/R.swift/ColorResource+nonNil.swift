import UIKit
import Rswift

public extension ColorResource {
    var value: UIColor {
        #if DEBUG
        return UIColor(named: name, in: bundle, compatibleWith: nil) ?? .red
        #else
        return UIColor(named: name, in: bundle, compatibleWith: nil) ?? .clear
        #endif

    }
}

