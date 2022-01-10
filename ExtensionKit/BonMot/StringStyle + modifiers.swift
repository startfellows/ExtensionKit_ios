//
//  BonMot + modifiers.swift
//  ExtensionKit
//

import UIKit
import BonMot

extension StringStyle {
    
    func extraAttributes(_ arg: StyleAttributes) -> StringStyle{
        self.byAdding(.extraAttributes(arg))
    }
    
    func font(_ arg: BONFont) -> StringStyle {
        self.byAdding(.font(arg))
    }
    
    func link(_ arg: URL) -> StringStyle {
        self.byAdding(.link(arg))
    }
    
    func backgroundColor(_ arg: BONColor) -> StringStyle {
        self.byAdding(.backgroundColor(arg))
    }
    
    func color(_ arg: BONColor) -> StringStyle {
        self.byAdding(.color(arg))
    }
    
    func underline(_ style: NSUnderlineStyle, _ color: BONColor?) -> StringStyle {
        self.byAdding(.underline(style, color))
    }
    
    func strikethrough(_ style: NSUnderlineStyle, _ color: BONColor?) -> StringStyle {
        self.byAdding(.strikethrough(style, color))
    }
    
    func baselineOffset(_ arg: CGFloat) -> StringStyle {
        self.byAdding(.baselineOffset(arg))
    }
    
    /// If set to `true`, when the string is read aloud, all punctuation will
    /// be spoken aloud as well.
    func speaksPunctuation(_ arg: Bool) -> StringStyle {
        self.byAdding(.speaksPunctuation(arg))
    }

    func speakingLanguage(_ arg: String) -> StringStyle {
        self.byAdding(.speakingLanguage(arg))
    }
    
    /// The pitch of the voice used to read the text aloud. The range is
    /// 0 to 2, where 0 is the lowest, 2 is the highest, and 1 is the default.
    func speakingPitch(_ arg: Double) -> StringStyle {
        self.byAdding(.speakingPitch(arg))
    }
    
    /// The IPA pronunciation of the given range.
    func speakingPronunciation(_ arg: String) -> StringStyle {
        self.byAdding(.speakingPronunciation(arg))
    }
    
    /// Whether the spoken text is queued behind, or interrupts, existing spoken content.
    func shouldQueueSpeechAnnouncement(_ arg: Bool) -> StringStyle {
        self.byAdding(.shouldQueueSpeechAnnouncement(arg))
    }
    
    /// The accessibility heading level of the text.
    func headingLevel(_ arg: HeadingLevel) -> StringStyle {
        self.byAdding(.headingLevel(arg))
    }

    func ligatures(_ arg: Ligatures) -> StringStyle {
        self.byAdding(.ligatures(arg))
    }
    
    func alignment(_ arg: NSTextAlignment) -> StringStyle {
        self.byAdding(.alignment(arg))
    }
    
    func tracking(_ arg: Tracking) -> StringStyle {
        self.byAdding(.tracking(arg))
    }
    
    
    func tracking(_ arg: CGFloat) -> StringStyle {
        self.byAdding(.tracking(.point(arg)))
    }
    
    
    func lineSpacing(_ arg: CGFloat) -> StringStyle {
        self.byAdding(.lineSpacing(arg))
    }
    
    func paragraphSpacingAfter(_ arg: CGFloat) -> StringStyle {
        self.byAdding(.paragraphSpacingAfter(arg))
    }
    
    func firstLineHeadIndent(_ arg: CGFloat) -> StringStyle {
        self.byAdding(.firstLineHeadIndent(arg))
    }
    
    func headIndent(_ arg: CGFloat) -> StringStyle {
        self.byAdding(.headIndent(arg))
    }
    
    func tailIndent(_ arg: CGFloat) -> StringStyle {
        self.byAdding(.tailIndent(arg))
    }
    
    func lineBreakMode(_ arg: NSLineBreakMode) -> StringStyle {
        self.byAdding(.lineBreakMode(arg))
    }
    
    func minimumLineHeight(_ arg: CGFloat) -> StringStyle {
        self.byAdding(.minimumLineHeight(arg))
    }
    
    func maximumLineHeight(_ arg: CGFloat) -> StringStyle {
        self.byAdding(.maximumLineHeight(arg))
    }
    
    func baseWritingDirection(_ arg: NSWritingDirection) -> StringStyle {
        self.byAdding(.baseWritingDirection(arg))
    }
    
    func lineHeightMultiple(_ arg: CGFloat) -> StringStyle {
        self.byAdding(.lineHeightMultiple(arg))
    }
    
    func paragraphSpacingBefore(_ arg: CGFloat) -> StringStyle {
        self.byAdding(.paragraphSpacingBefore(arg))
    }
    
    func allowsDefaultTighteningForTruncation(_ arg: Bool) -> StringStyle {
        self.byAdding(.allowsDefaultTighteningForTruncation(arg))
    }

    func hyphenationFactor(_ arg: Float) -> StringStyle {
        self.byAdding(.hyphenationFactor(arg))
    }
    
    func xml() -> StringStyle {
        self.byAdding(.xml)
    }
    
    func xmlRules(_ arg: [XMLStyleRule]) -> StringStyle {
        self.byAdding(.xmlRules(arg))
    }
    
    func xmlStyler(_ arg: XMLStyler) -> StringStyle {
        self.byAdding(.xmlStyler(arg))
    }
    
    func transform(_ arg: Transform) -> StringStyle {
        self.byAdding(.transform(arg))
    }

    func fontFeature(_ arg: FontFeatureProvider) -> StringStyle {
        self.byAdding(.fontFeature(arg))
    }
    
    func numberSpacing(_ arg: NumberSpacing) -> StringStyle {
        self.byAdding(.numberSpacing(arg))
    }
    
    func numberCase(_ arg: NumberCase) -> StringStyle {
        self.byAdding(.numberCase(arg))
    }
    
    func fractions(_ arg: Fractions) -> StringStyle {
        self.byAdding(.fractions(arg))
    }
    
    func superscript(_ arg: Bool) -> StringStyle {
        self.byAdding(.superscript(arg))
    }
    
    func `subscript`(_ arg: Bool) -> StringStyle {
        self.byAdding(.subscript(arg))
    }
    
    func ordinals(_ arg: Bool) -> StringStyle {
        self.byAdding(.ordinals(arg))
    }
    
    func scientificInferiors(_ arg: Bool) -> StringStyle {
        self.byAdding(.scientificInferiors(arg))
    }
    
    func smallCaps(_ arg: SmallCaps) -> StringStyle {
        self.byAdding(.smallCaps(arg))
    }
    
    func stylisticAlternates(_ arg: StylisticAlternates) -> StringStyle {
        self.byAdding(.stylisticAlternates(arg))
    }
    
    func contextualAlternates(_ arg: ContextualAlternates) -> StringStyle {
        self.byAdding(.contextualAlternates(arg))
    }
    
    func textStyle(_ arg: BonMotTextStyle) -> StringStyle {
        self.byAdding(.textStyle(arg))
    }
    
    func adapt(_ arg: AdaptiveStyle) -> StringStyle {
        self.byAdding(.adapt(arg))
    }
    
    func emphasis(_ arg: Emphasis) -> StringStyle {
        self.byAdding(.emphasis(arg))
    }
}
