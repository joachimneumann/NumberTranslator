// Note: This file is automatically generated
//       It will be overwritten when testing

import Testing
@testable import NumberTranslator

@Test func ArmenianNumerals() {
    let translator = ArmenianNumeralsImplementation()
    #expect(translator.translate(0).x == "zero unknown")
    #expect(translator.translate(1).x == "Ա")
    #expect(translator.translate(2).x == "Բ")
    #expect(translator.translate(3).x == "Գ")
    #expect(translator.translate(4).x == "Դ")
    #expect(translator.translate(5).x == "Ե")
    #expect(translator.translate(6).x == "Զ")
    #expect(translator.translate(7).x == "Է")
    #expect(translator.translate(8).x == "Ը")
    #expect(translator.translate(9).x == "Թ")
    #expect(translator.translate(10).x == "Ժ")
    #expect(translator.translate(11).x == "ԺԱ")
    #expect(translator.translate(12).x == "ԺԲ")
    #expect(translator.translate(13).x == "ԺԳ")
    #expect(translator.translate(14).x == "ԺԴ")
    #expect(translator.translate(50).x == "Ծ")
    #expect(translator.translate(120).x == "ՃԻ")
    #expect(translator.translate(1975).x == "ՌՋՀԵ")
    #expect(translator.translate(2004).x == "ՍԴ")
    #expect(translator.translate(2_222).x == "ՍՄԻԲ")
    #expect(translator.translate(9_999).x == "ՔՋՂԹ")
    #expect(translator.translate(10_000).x == "Ա OVERLINE")
    #expect(translator.translate(9_000_000).x == "Ջ OVERLINE")
    #expect(translator.translate(11_431_255).x == "ՌՃԽԳ OVERLINE ՌՄԾԵ")

    let temp1 = 11_43*10_000+1_255
    #expect(translator.translate(temp1).x == "ՌՃԽԳ OVERLINE ՌՄԾԵ")

    let temp2 = 9_999*10_000+9_999
    #expect(translator.translate(temp2).x == "ՔՋՂԹ OVERLINE ՔՋՂԹ")

    let temp3 = 9_999*10_000+9_999+1
    #expect(translator.translate(temp3).x == "too large")
}