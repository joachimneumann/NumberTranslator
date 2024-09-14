// Note: This file is automatically generated
//       It will be overwritten when testing

import Testing
@testable import NumberTranslator

@Test func ChineseTraditional() {
    let translator = ChineseImplementation(variant: ChineseImplementation.Variant.traditional)
    #expect(translator.translate(0).x == "零")
    #expect(translator.translate(10_000).x == "一萬")
    #expect(translator.translate(789_0298).x == "七百 八十九萬 零二百 九十八")
}