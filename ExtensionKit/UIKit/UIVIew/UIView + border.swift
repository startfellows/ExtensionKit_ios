import UIKit

public extension UIView {
    public struct Border {
        public var width: CGFloat
        public var color: UIColor?
    }
    
    var border: Border {
        get {
            .init(width: layer.borderWidth,
                  color: layer.borderColor.map(UIColor.init))
            
        }
        
        set {
            layer.borderColor = newValue.color?.cgColor
            layer.borderWidth = newValue.width
        }
        
    }
}
