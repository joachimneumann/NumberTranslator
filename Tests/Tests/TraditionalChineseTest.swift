// Note: This file is automatically generated by the python script Tests/testsFromGroundtruth.py
//       Running this script will be overwrite any changes you make to this file

import Testing
@testable import NumberTranslator

@Test func traditionalChinese() {
    let translator = NumberTranslator()
    #expect(translator.translate(0, to: .traditionalChinese).x == "零")
    #expect(translator.translate(10_000, to: .traditionalChinese).x == "一萬")
    #expect(translator.translate(789_0298, to: .traditionalChinese).x == "七百 八十九萬 零二百 九十八")
}
