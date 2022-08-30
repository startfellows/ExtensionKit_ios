import UIKit

public extension UIView {
    func imageSnapshot() -> UIImage {
        UIGraphicsImageRenderer(bounds: bounds).image(actions: { _ in
            drawHierarchy(in: bounds, afterScreenUpdates: true)
        })
    }
}
