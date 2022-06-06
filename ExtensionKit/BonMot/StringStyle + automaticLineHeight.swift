import BonMot

public extension BonMot.StringStyle {
    func automaticLineHeight() -> Self {
        var new = self
        new.maximumLineHeight = nil
        new.minimumLineHeight = nil
        return new
    }
}
