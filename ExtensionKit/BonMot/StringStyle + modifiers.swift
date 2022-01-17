//
//  BonMot + modifiers.swift
//  ExtensionKit
//

import UIKit
import BonMot

public extension BonMot.StringStyle {
    
    static func extraAttributes(_ arg: StyleAttributes) -> BonMot.StringStyle {
        BonMot.StringStyle(.extraAttributes(arg))
    }
    
    static func font(_ arg: BONFont) -> BonMot.StringStyle {
        BonMot.StringStyle(.font(arg))
    }
    
    static func link(_ arg: URL) -> BonMot.StringStyle {
        BonMot.StringStyle(.link(arg))
    }
    
    static func backgroundColor(_ arg: BONColor) -> BonMot.StringStyle {
        BonMot.StringStyle(.backgroundColor(arg))
    }
    
    static func color(_ arg: BONColor) -> BonMot.StringStyle {
        BonMot.StringStyle(.color(arg))
    }
    
    static func underline(_ style: NSUnderlineStyle, _ color: BONColor?) -> BonMot.StringStyle {
        BonMot.StringStyle(.underline(style, color))
    }
    
    static func strikethrough(_ style: NSUnderlineStyle, _ color: BONColor?) -> BonMot.StringStyle {
        BonMot.StringStyle(.strikethrough(style, color))
    }
    
    static func baselineOffset(_ arg: CGFloat) -> BonMot.StringStyle {
        BonMot.StringStyle(.baselineOffset(arg))
    }
    
    /// If set to `true`, when the string is read aloud, all punctuation will
    /// be spoken aloud as well.
    static func speaksPunctuation(_ arg: Bool) -> BonMot.StringStyle {
        BonMot.StringStyle(.speaksPunctuation(arg))
    }

    static func speakingLanguage(_ arg: String) -> BonMot.StringStyle {
        BonMot.StringStyle(.speakingLanguage(arg))
    }
    
    /// The pitch of the voice used to read the text aloud. The range is
    /// 0 to 2, where 0 is the lowest, 2 is the highest, and 1 is the default.
    static func speakingPitch(_ arg: Double) -> BonMot.StringStyle {
        BonMot.StringStyle(.speakingPitch(arg))
    }
    
    /// The IPA pronunciation of the given range.
    static func speakingPronunciation(_ arg: String) -> BonMot.StringStyle {
        BonMot.StringStyle(.speakingPronunciation(arg))
    }
    
    /// Whether the spoken text is queued behind, or interrupts, existing spoken content.
    static func shouldQueueSpeechAnnouncement(_ arg: Bool) -> BonMot.StringStyle {
        BonMot.StringStyle(.shouldQueueSpeechAnnouncement(arg))
    }
    
    /// The accessibility heading level of the text.
    static func headingLevel(_ arg: HeadingLevel) -> BonMot.StringStyle {
        BonMot.StringStyle(.headingLevel(arg))
    }

    static func ligatures(_ arg: Ligatures) -> BonMot.StringStyle {
        BonMot.StringStyle(.ligatures(arg))
    }
    
    static func alignment(_ arg: NSTextAlignment) -> BonMot.StringStyle {
        BonMot.StringStyle(.alignment(arg))
    }
    
    static func tracking(_ arg: Tracking) -> BonMot.StringStyle {
        BonMot.StringStyle(.tracking(arg))
    }
    
    
    static func tracking(_ arg: CGFloat) -> BonMot.StringStyle {
        BonMot.StringStyle(.tracking(.point(arg)))
    }
    
    
    static func lineSpacing(_ arg: CGFloat) -> BonMot.StringStyle {
        BonMot.StringStyle(.lineSpacing(arg))
    }
    
    static func paragraphSpacingAfter(_ arg: CGFloat) -> BonMot.StringStyle {
        BonMot.StringStyle(.paragraphSpacingAfter(arg))
    }
    
    static func firstLineHeadIndent(_ arg: CGFloat) -> BonMot.StringStyle {
        BonMot.StringStyle(.firstLineHeadIndent(arg))
    }
    
    static func headIndent(_ arg: CGFloat) -> BonMot.StringStyle {
        BonMot.StringStyle(.headIndent(arg))
    }
    
    static func tailIndent(_ arg: CGFloat) -> BonMot.StringStyle {
        BonMot.StringStyle(.tailIndent(arg))
    }
    
    static func lineBreakMode(_ arg: NSLineBreakMode) -> BonMot.StringStyle {
        BonMot.StringStyle(.lineBreakMode(arg))
    }
    
    static func minimumLineHeight(_ arg: CGFloat) -> BonMot.StringStyle {
        BonMot.StringStyle(.minimumLineHeight(arg))
    }
    
    static func maximumLineHeight(_ arg: CGFloat) -> BonMot.StringStyle {
        BonMot.StringStyle(.maximumLineHeight(arg))
    }
    
    static func baseWritingDirection(_ arg: NSWritingDirection) -> BonMot.StringStyle {
        BonMot.StringStyle(.baseWritingDirection(arg))
    }
    
    static func lineHeightMultiple(_ arg: CGFloat) -> BonMot.StringStyle {
        BonMot.StringStyle(.lineHeightMultiple(arg))
    }
    
    static func paragraphSpacingBefore(_ arg: CGFloat) -> BonMot.StringStyle {
        BonMot.StringStyle(.paragraphSpacingBefore(arg))
    }
    
    static func allowsDefaultTighteningForTruncation(_ arg: Bool) -> BonMot.StringStyle {
        BonMot.StringStyle(.allowsDefaultTighteningForTruncation(arg))
    }

    static func hyphenationFactor(_ arg: Float) -> BonMot.StringStyle {
        BonMot.StringStyle(.hyphenationFactor(arg))
    }
    
    static func xml() -> BonMot.StringStyle {
        BonMot.StringStyle(.xml)
    }
    
    static func xmlRules(_ arg: [XMLStyleRule]) -> BonMot.StringStyle {
        BonMot.StringStyle(.xmlRules(arg))
    }
    
    static func xmlStyler(_ arg: XMLStyler) -> BonMot.StringStyle {
        BonMot.StringStyle(.xmlStyler(arg))
    }
    
    static func transform(_ arg: Transform) -> BonMot.StringStyle {
        BonMot.StringStyle(.transform(arg))
    }

    static func fontFeature(_ arg: FontFeatureProvider) -> BonMot.StringStyle {
        BonMot.StringStyle(.fontFeature(arg))
    }
    
    static func numberSpacing(_ arg: NumberSpacing) -> BonMot.StringStyle {
        BonMot.StringStyle(.numberSpacing(arg))
    }
    
    static func numberCase(_ arg: NumberCase) -> BonMot.StringStyle {
        BonMot.StringStyle(.numberCase(arg))
    }
    
    static func fractions(_ arg: Fractions) -> BonMot.StringStyle {
        BonMot.StringStyle(.fractions(arg))
    }
    
    static func superscript(_ arg: Bool) -> BonMot.StringStyle {
        BonMot.StringStyle(.superscript(arg))
    }
    
    static func `subscript`(_ arg: Bool) -> BonMot.StringStyle {
        BonMot.StringStyle(.subscript(arg))
    }
    
    static func ordinals(_ arg: Bool) -> BonMot.StringStyle {
        BonMot.StringStyle(.ordinals(arg))
    }
    
    static func scientificInferiors(_ arg: Bool) -> BonMot.StringStyle {
        BonMot.StringStyle(.scientificInferiors(arg))
    }
    
    static func smallCaps(_ arg: SmallCaps) -> BonMot.StringStyle {
        BonMot.StringStyle(.smallCaps(arg))
    }
    
    static func stylisticAlternates(_ arg: StylisticAlternates) -> BonMot.StringStyle {
        BonMot.StringStyle(.stylisticAlternates(arg))
    }
    
    static func contextualAlternates(_ arg: ContextualAlternates) -> BonMot.StringStyle {
        BonMot.StringStyle(.contextualAlternates(arg))
    }
    
    static func textStyle(_ arg: BonMotTextStyle) -> BonMot.StringStyle {
        BonMot.StringStyle(.textStyle(arg))
    }
    
    static func adapt(_ arg: AdaptiveStyle) -> BonMot.StringStyle {
        BonMot.StringStyle(.adapt(arg))
    }
    
    static func emphasis(_ arg: Emphasis) -> BonMot.StringStyle {
        BonMot.StringStyle(.emphasis(arg))
    }
}
