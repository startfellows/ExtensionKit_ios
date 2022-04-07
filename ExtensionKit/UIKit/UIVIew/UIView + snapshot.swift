import UIKit

public extension UIView {
    func imageSnapshot() -> UIImage? {
        UIGraphicsImageRenderer().image(actions: {
            layer.draw(in: $0.cgContext)
        })
    }
}
