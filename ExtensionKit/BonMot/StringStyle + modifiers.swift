//
//  BonMot + modifiers.swift
//  ExtensionKit
//

import UIKit
import BonMot

public extension BonMot.StringStyle {
    
    func extraAttributes(_ arg: StyleAttributes) -> BonMot.StringStyle{
        self.byAdding(.extraAttributes(arg))
    }
    
    func font(_ arg: BONFont) -> BonMot.StringStyle {
        self.byAdding(.font(arg))
    }
    
    func link(_ arg: URL) -> BonMot.StringStyle {
        self.byAdding(.link(arg))
    }
    
    func backgroundColor(_ arg: BONColor) -> BonMot.StringStyle {
        self.byAdding(.backgroundColor(arg))
    }
    
    func color(_ arg: BONColor) -> BonMot.StringStyle {
        self.byAdding(.color(arg))
    }
    
    func underline(_ style: NSUnderlineStyle, _ color: BONColor?) -> BonMot.StringStyle {
        self.byAdding(.underline(style, color))
    }
    
    func strikethrough(_ style: NSUnderlineStyle, _ color: BONColor?) -> BonMot.StringStyle {
        self.byAdding(.strikethrough(style, color))
    }
    
    func baselineOffset(_ arg: CGFloat) -> BonMot.StringStyle {
        self.byAdding(.baselineOffset(arg))
    }
    
    /// If set to `true`, when the string is read aloud, all punctuation will
    /// be spoken aloud as well.
    func speaksPunctuation(_ arg: Bool) -> BonMot.StringStyle {
        self.byAdding(.speaksPunctuation(arg))
    }

    func speakingLanguage(_ arg: String) -> BonMot.StringStyle {
        self.byAdding(.speakingLanguage(arg))
    }
    
    /// The pitch of the voice used to read the text aloud. The range is
    /// 0 to 2, where 0 is the lowest, 2 is the highest, and 1 is the default.
    func speakingPitch(_ arg: Double) -> BonMot.StringStyle {
        self.byAdding(.speakingPitch(arg))
    }
    
    /// The IPA pronunciation of the given range.
    func speakingPronunciation(_ arg: String) -> BonMot.StringStyle {
        self.byAdding(.speakingPronunciation(arg))
    }
    
    /// Whether the spoken text is queued behind, or interrupts, existing spoken content.
    func shouldQueueSpeechAnnouncement(_ arg: Bool) -> BonMot.StringStyle {
        self.byAdding(.shouldQueueSpeechAnnouncement(arg))
    }
    
    /// The accessibility heading level of the text.
    func headingLevel(_ arg: HeadingLevel) -> BonMot.StringStyle {
        self.byAdding(.headingLevel(arg))
    }

    func ligatures(_ arg: Ligatures) -> BonMot.StringStyle {
        self.byAdding(.ligatures(arg))
    }
    
    func alignment(_ arg: NSTextAlignment) -> BonMot.StringStyle {
        self.byAdding(.alignment(arg))
    }
    
    func tracking(_ arg: Tracking) -> BonMot.StringStyle {
        self.byAdding(.tracking(arg))
    }
    
    
    func tracking(_ arg: CGFloat) -> BonMot.StringStyle {
        self.byAdding(.tracking(.point(arg)))
    }
    
    
    func lineSpacing(_ arg: CGFloat) -> BonMot.StringStyle {
        self.byAdding(.lineSpacing(arg))
    }
    
    func paragraphSpacingAfter(_ arg: CGFloat) -> BonMot.StringStyle {
        self.byAdding(.paragraphSpacingAfter(arg))
    }
    
    func firstLineHeadIndent(_ arg: CGFloat) -> BonMot.StringStyle {
        self.byAdding(.firstLineHeadIndent(arg))
    }
    
    func headIndent(_ arg: CGFloat) -> BonMot.StringStyle {
        self.byAdding(.headIndent(arg))
    }
    
    func tailIndent(_ arg: CGFloat) -> BonMot.StringStyle {
        self.byAdding(.tailIndent(arg))
    }
    
    func lineBreakMode(_ arg: NSLineBreakMode) -> BonMot.StringStyle {
        self.byAdding(.lineBreakMode(arg))
    }
    
    func minimumLineHeight(_ arg: CGFloat) -> BonMot.StringStyle {
        self.byAdding(.minimumLineHeight(arg))
    }
    
    func maximumLineHeight(_ arg: CGFloat) -> BonMot.StringStyle {
        self.byAdding(.maximumLineHeight(arg))
    }
    
    func baseWritingDirection(_ arg: NSWritingDirection) -> BonMot.StringStyle {
        self.byAdding(.baseWritingDirection(arg))
    }
    
    func lineHeightMultiple(_ arg: CGFloat) -> BonMot.StringStyle {
        self.byAdding(.lineHeightMultiple(arg))
    }
    
    func paragraphSpacingBefore(_ arg: CGFloat) -> BonMot.StringStyle {
        self.byAdding(.paragraphSpacingBefore(arg))
    }
    
    func allowsDefaultTighteningForTruncation(_ arg: Bool) -> BonMot.StringStyle {
        self.byAdding(.allowsDefaultTighteningForTruncation(arg))
    }

    func hyphenationFactor(_ arg: Float) -> BonMot.StringStyle {
        self.byAdding(.hyphenationFactor(arg))
    }
    
    func xml() -> BonMot.StringStyle {
        self.byAdding(.xml)
    }
    
    func xmlRules(_ arg: [XMLStyleRule]) -> BonMot.StringStyle {
        self.byAdding(.xmlRules(arg))
    }
    
    func xmlStyler(_ arg: XMLStyler) -> BonMot.StringStyle {
        self.byAdding(.xmlStyler(arg))
    }
    
    func transform(_ arg: Transform) -> BonMot.StringStyle {
        self.byAdding(.transform(arg))
    }

    func fontFeature(_ arg: FontFeatureProvider) -> BonMot.StringStyle {
        self.byAdding(.fontFeature(arg))
    }
    
    func numberSpacing(_ arg: NumberSpacing) -> BonMot.StringStyle {
        self.byAdding(.numberSpacing(arg))
    }
    
    func numberCase(_ arg: NumberCase) -> BonMot.StringStyle {
        self.byAdding(.numberCase(arg))
    }
    
    func fractions(_ arg: Fractions) -> BonMot.StringStyle {
        self.byAdding(.fractions(arg))
    }
    
    func superscript(_ arg: Bool) -> BonMot.StringStyle {
        self.byAdding(.superscript(arg))
    }
    
    func `subscript`(_ arg: Bool) -> BonMot.StringStyle {
        self.byAdding(.subscript(arg))
    }
    
    func ordinals(_ arg: Bool) -> BonMot.StringStyle {
        self.byAdding(.ordinals(arg))
    }
    
    func scientificInferiors(_ arg: Bool) -> BonMot.StringStyle {
        self.byAdding(.scientificInferiors(arg))
    }
    
    func smallCaps(_ arg: SmallCaps) -> BonMot.StringStyle {
        self.byAdding(.smallCaps(arg))
    }
    
    func stylisticAlternates(_ arg: StylisticAlternates) -> BonMot.StringStyle {
        self.byAdding(.stylisticAlternates(arg))
    }
    
    func contextualAlternates(_ arg: ContextualAlternates) -> BonMot.StringStyle {
        self.byAdding(.contextualAlternates(arg))
    }
    
    func textStyle(_ arg: BonMotTextStyle) -> BonMot.StringStyle {
        self.byAdding(.textStyle(arg))
    }
    
    func adapt(_ arg: AdaptiveStyle) -> BonMot.StringStyle {
        self.byAdding(.adapt(arg))
    }
    
    func emphasis(_ arg: Emphasis) -> BonMot.StringStyle {
        self.byAdding(.emphasis(arg))
    }
}
