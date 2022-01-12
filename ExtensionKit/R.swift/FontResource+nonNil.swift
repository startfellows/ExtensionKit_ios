import Rswift

public extension FontResource {
    func value(size: CGFloat) -> UIFont {
        #if DEBUG
        return UIFont(name: fontName, size: size) ?? .systemFont(ofSize: 100)
        #else
        return UIFont(name: fontName, size: size) ?? .systemFont(ofSize: size)
        #endif
    }
}
