//
//  BonMot + modifiers.swift
//  ExtensionKit
//

import UIKit
import BonMot

public extension BonMot.StringStyle {
    
    static func extraAttributes(_ arg: StyleAttributes) -> StringStyle{
        StringStyle(.extraAttributes(arg))
    }
    
    static func font(_ arg: BONFont) -> StringStyle {
        StringStyle(.font(arg))
    }
    
    static func link(_ arg: URL) -> StringStyle {
        StringStyle(.link(arg))
    }
    
    static func backgroundColor(_ arg: BONColor) -> StringStyle {
        StringStyle(.backgroundColor(arg))
    }
    
    static func color(_ arg: BONColor) -> StringStyle {
        StringStyle(.color(arg))
    }
    
    static func underline(_ style: NSUnderlineStyle, _ color: BONColor?) -> StringStyle {
        StringStyle(.underline(style, color))
    }
    
    static func strikethrough(_ style: NSUnderlineStyle, _ color: BONColor?) -> StringStyle {
        StringStyle(.strikethrough(style, color))
    }
    
    static func baselineOffset(_ arg: CGFloat) -> StringStyle {
        StringStyle(.baselineOffset(arg))
    }
    
    /// If set to `true`, when the string is read aloud, all punctuation will
    /// be spoken aloud as well.
    static func speaksPunctuation(_ arg: Bool) -> StringStyle {
        StringStyle(.speaksPunctuation(arg))
    }

    static func speakingLanguage(_ arg: String) -> StringStyle {
        StringStyle(.speakingLanguage(arg))
    }
    
    /// The pitch of the voice used to read the text aloud. The range is
    /// 0 to 2, where 0 is the lowest, 2 is the highest, and 1 is the default.
    static func speakingPitch(_ arg: Double) -> StringStyle {
        StringStyle(.speakingPitch(arg))
    }
    
    /// The IPA pronunciation of the given range.
    static func speakingPronunciation(_ arg: String) -> StringStyle {
        StringStyle(.speakingPronunciation(arg))
    }
    
    /// Whether the spoken text is queued behind, or interrupts, existing spoken content.
    static func shouldQueueSpeechAnnouncement(_ arg: Bool) -> StringStyle {
        StringStyle(.shouldQueueSpeechAnnouncement(arg))
    }
    
    /// The accessibility heading level of the text.
    static func headingLevel(_ arg: HeadingLevel) -> StringStyle {
        StringStyle(.headingLevel(arg))
    }

    static func ligatures(_ arg: Ligatures) -> StringStyle {
        StringStyle(.ligatures(arg))
    }
    
    static func alignment(_ arg: NSTextAlignment) -> StringStyle {
        StringStyle(.alignment(arg))
    }
    
    static func tracking(_ arg: Tracking) -> StringStyle {
        StringStyle(.tracking(arg))
    }
    
    
    static func tracking(_ arg: CGFloat) -> StringStyle {
        StringStyle(.tracking(.point(arg)))
    }
    
    
    static func lineSpacing(_ arg: CGFloat) -> StringStyle {
        StringStyle(.lineSpacing(arg))
    }
    
    static func paragraphSpacingAfter(_ arg: CGFloat) -> StringStyle {
        StringStyle(.paragraphSpacingAfter(arg))
    }
    
    static func firstLineHeadIndent(_ arg: CGFloat) -> StringStyle {
        StringStyle(.firstLineHeadIndent(arg))
    }
    
    static func headIndent(_ arg: CGFloat) -> StringStyle {
        StringStyle(.headIndent(arg))
    }
    
    static func tailIndent(_ arg: CGFloat) -> StringStyle {
        StringStyle(.tailIndent(arg))
    }
    
    static func lineBreakMode(_ arg: NSLineBreakMode) -> StringStyle {
        StringStyle(.lineBreakMode(arg))
    }
    
    static func minimumLineHeight(_ arg: CGFloat) -> StringStyle {
        StringStyle(.minimumLineHeight(arg))
    }
    
    static func maximumLineHeight(_ arg: CGFloat) -> StringStyle {
        StringStyle(.maximumLineHeight(arg))
    }
    
    static func baseWritingDirection(_ arg: NSWritingDirection) -> StringStyle {
        StringStyle(.baseWritingDirection(arg))
    }
    
    static func lineHeightMultiple(_ arg: CGFloat) -> StringStyle {
        StringStyle(.lineHeightMultiple(arg))
    }
    
    static func paragraphSpacingBefore(_ arg: CGFloat) -> StringStyle {
        StringStyle(.paragraphSpacingBefore(arg))
    }
    
    static func allowsDefaultTighteningForTruncation(_ arg: Bool) -> StringStyle {
        StringStyle(.allowsDefaultTighteningForTruncation(arg))
    }

    static func hyphenationFactor(_ arg: Float) -> StringStyle {
        StringStyle(.hyphenationFactor(arg))
    }
    
    static func xml() -> StringStyle {
        StringStyle(.xml)
    }
    
    static func xmlRules(_ arg: [XMLStyleRule]) -> StringStyle {
        StringStyle(.xmlRules(arg))
    }
    
    static func xmlStyler(_ arg: XMLStyler) -> StringStyle {
        StringStyle(.xmlStyler(arg))
    }
    
    static func transform(_ arg: Transform) -> StringStyle {
        StringStyle(.transform(arg))
    }

    static func fontFeature(_ arg: FontFeatureProvider) -> StringStyle {
        StringStyle(.fontFeature(arg))
    }
    
    static func numberSpacing(_ arg: NumberSpacing) -> StringStyle {
        StringStyle(.numberSpacing(arg))
    }
    
    static func numberCase(_ arg: NumberCase) -> StringStyle {
        StringStyle(.numberCase(arg))
    }
    
    static func fractions(_ arg: Fractions) -> StringStyle {
        StringStyle(.fractions(arg))
    }
    
    static func superscript(_ arg: Bool) -> StringStyle {
        StringStyle(.superscript(arg))
    }
    
    static func `subscript`(_ arg: Bool) -> StringStyle {
        StringStyle(.subscript(arg))
    }
    
    static func ordinals(_ arg: Bool) -> StringStyle {
        StringStyle(.ordinals(arg))
    }
    
    static func scientificInferiors(_ arg: Bool) -> StringStyle {
        StringStyle(.scientificInferiors(arg))
    }
    
    static func smallCaps(_ arg: SmallCaps) -> StringStyle {
        StringStyle(.smallCaps(arg))
    }
    
    static func stylisticAlternates(_ arg: StylisticAlternates) -> StringStyle {
        StringStyle(.stylisticAlternates(arg))
    }
    
    static func contextualAlternates(_ arg: ContextualAlternates) -> StringStyle {
        StringStyle(.contextualAlternates(arg))
    }
    
    static func textStyle(_ arg: BonMotTextStyle) -> StringStyle {
        StringStyle(.textStyle(arg))
    }
    
    static func adapt(_ arg: AdaptiveStyle) -> StringStyle {
        StringStyle(.adapt(arg))
    }
    
    static func emphasis(_ arg: Emphasis) -> StringStyle {
        StringStyle(.emphasis(arg))
    }
}
