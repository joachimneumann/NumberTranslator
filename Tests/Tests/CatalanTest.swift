// Note: This file is automatically generated by the python script Tests/testsFromGroundtruth.py
//       Running this script will be overwrite any changes you make to this file

import Testing
@testable import NumberTranslator

@Test func Catalan() {
    let translator = NumberTranslator()
    #expect(translator.translate(1, to: .catalan).x == "u")
    #expect(translator.translate(2, to: .catalan).x == "dos")
    #expect(translator.translate(3, to: .catalan).x == "tres")
    #expect(translator.translate(4, to: .catalan).x == "quatre")
    #expect(translator.translate(5, to: .catalan).x == "cinc")
    #expect(translator.translate(6, to: .catalan).x == "sis")
    #expect(translator.translate(7, to: .catalan).x == "set")
    #expect(translator.translate(8, to: .catalan).x == "vuit")
    #expect(translator.translate(9, to: .catalan).x == "nou")
    #expect(translator.translate(10, to: .catalan).x == "deu")
    #expect(translator.translate(11, to: .catalan).x == "onze")
    #expect(translator.translate(12, to: .catalan).x == "dotze")
    #expect(translator.translate(13, to: .catalan).x == "tretze")
    #expect(translator.translate(14, to: .catalan).x == "catorze")
    #expect(translator.translate(15, to: .catalan).x == "quinze")
    #expect(translator.translate(16, to: .catalan).x == "setze")
    #expect(translator.translate(17, to: .catalan).x == "disset")
    #expect(translator.translate(18, to: .catalan).x == "divuit")
    #expect(translator.translate(19, to: .catalan).x == "dinou")
    #expect(translator.translate(20, to: .catalan).x == "vint")
    #expect(translator.translate(21, to: .catalan).x == "vint-i-u")
    #expect(translator.translate(22, to: .catalan).x == "vint-i-dos")
    #expect(translator.translate(23, to: .catalan).x == "vint-i-tres")
    #expect(translator.translate(24, to: .catalan).x == "vint-i-quatre")
    #expect(translator.translate(25, to: .catalan).x == "vint-i-cinc")
    #expect(translator.translate(26, to: .catalan).x == "vint-i-sis")
    #expect(translator.translate(27, to: .catalan).x == "vint-i-set")
    #expect(translator.translate(28, to: .catalan).x == "vint-i-vuit")
    #expect(translator.translate(29, to: .catalan).x == "vint-i-nou")
    #expect(translator.translate(30, to: .catalan).x == "trenta")
    #expect(translator.translate(31, to: .catalan).x == "trenta-u")
    #expect(translator.translate(32, to: .catalan).x == "trenta-dos")
    #expect(translator.translate(33, to: .catalan).x == "trenta-tres")
    #expect(translator.translate(34, to: .catalan).x == "trenta-quatre")
    #expect(translator.translate(35, to: .catalan).x == "trenta-cinc")
    #expect(translator.translate(36, to: .catalan).x == "trenta-sis")
    #expect(translator.translate(37, to: .catalan).x == "trenta-set")
    #expect(translator.translate(38, to: .catalan).x == "trenta-vuit")
    #expect(translator.translate(39, to: .catalan).x == "trenta-nou")
    #expect(translator.translate(40, to: .catalan).x == "quaranta")
    #expect(translator.translate(41, to: .catalan).x == "quaranta-u")
    #expect(translator.translate(50, to: .catalan).x == "cinquanta")
    #expect(translator.translate(60, to: .catalan).x == "seixanta")
    #expect(translator.translate(70, to: .catalan).x == "setanta")
    #expect(translator.translate(80, to: .catalan).x == "vuitanta")
    #expect(translator.translate(90, to: .catalan).x == "noranta")
    #expect(translator.translate(100, to: .catalan).x == "cent")
    #expect(translator.translate(101, to: .catalan).x == "cent u")
    #expect(translator.translate(102, to: .catalan).x == "cent dos")
    #expect(translator.translate(103, to: .catalan).x == "cent tres")
    #expect(translator.translate(104, to: .catalan).x == "cent quatre")
    #expect(translator.translate(105, to: .catalan).x == "cent cinc")
    #expect(translator.translate(144, to: .catalan).x == "cent quaranta-quatre")
    #expect(translator.translate(200, to: .catalan).x == "dos-cents")
    #expect(translator.translate(300, to: .catalan).x == "tres-cents")
    #expect(translator.translate(400, to: .catalan).x == "quatre-cents")
    #expect(translator.translate(500, to: .catalan).x == "cinc-cents")
    #expect(translator.translate(600, to: .catalan).x == "sis-cents")
    #expect(translator.translate(700, to: .catalan).x == "set-cents")
    #expect(translator.translate(800, to: .catalan).x == "vuit-cents")
    #expect(translator.translate(900, to: .catalan).x == "nou-cents")
    #expect(translator.translate(1_000, to: .catalan).x == "mil")
    #expect(translator.translate(2_000, to: .catalan).x == "dos mil")
    #expect(translator.translate(3_000, to: .catalan).x == "tres mil")
    #expect(translator.translate(3_001, to: .catalan).x == "tres mil u")
    #expect(translator.translate(6_000, to: .catalan).x == "sis mil")
    #expect(translator.translate(6_001, to: .catalan).x == "sis mil u")
    #expect(translator.translate(10_000, to: .catalan).x == "deu mil")
    #expect(translator.translate(11_001, to: .catalan).x == "onze mil u")
    #expect(translator.translate(12_895, to: .catalan).x == "dotze mil vuit-cents noranta-cinc")
    #expect(translator.translate(12_786, to: .catalan).x == "dotze mil set-cents vuitanta-sis")
    #expect(translator.translate(70_000, to: .catalan).x == "setanta mil")
    #expect(translator.translate(187_372, to: .catalan).x == "cent vuitanta-set mil tres-cents setanta-dos")
    #expect(translator.translate(200_000, to: .catalan).x == "dos-cents mil")
    #expect(translator.translate(280_065, to: .catalan).x == "dos-cents vuitanta mil seixanta-cinc")
    #expect(translator.translate(706_210, to: .catalan).x == "set-cents sis mil dos-cents deu")
    #expect(translator.translate(100_000, to: .catalan).x == "cent mil")
    #expect(translator.translate(1_000_000, to: .catalan).x == "un milió")
    #expect(translator.translate(1_000_050, to: .catalan).x == "un milió cinquanta")
    #expect(translator.translate(3_000_100, to: .catalan).x == "tres milions cent")
    #expect(translator.translate(10_000_000, to: .catalan).x == "deu milions")
    #expect(translator.translate(40_000_000, to: .catalan).x == "quaranta milions")
    #expect(translator.translate(100_000_000, to: .catalan).x == "cent milions")
    #expect(translator.translate(500_000_000, to: .catalan).x == "cinc-cents milions")
    #expect(translator.translate(1_000_000_000, to: .catalan).x == "mil milions")
    #expect(translator.translate(1_000_000_200, to: .catalan).x == "mil milions dos-cents")
    #expect(translator.translate(10_000_000_000, to: .catalan).x == "deu mil milions")
    #expect(translator.translate(20_000_000_700, to: .catalan).x == "vint mil milions set-cents")
    #expect(translator.translate(100_000_000_000, to: .catalan).x == "cent mil milions")
    #expect(translator.translate(400_000_000_000, to: .catalan).x == "quatre-cents mil milions")
    #expect(translator.translate(1_000_000_000_000, to: .catalan).x == "un bilió")
    #expect(translator.translate(999_000_000_000_000, to: .catalan).x == "nou-cents noranta-nou bilions")
    #expect(translator.translate(-1, to: .catalan).x == "menys u")
    // -1, menys u
    #expect(translator.translate(1.5, to: .catalan).x == "u coma cinc")
    #expect(translator.translate(-1.5, to: .catalan).x == "menys u coma cinc")
    #expect(translator.translate(-1.51, to: .catalan).x == "menys u coma cinc u")
    #expect(translator.translate(-0.7, to: .catalan).x == "menys zero coma set")
    #expect(translator.translate(-1.5, to: .catalan).x == "menys u coma cinc")
    #expect(translator.translate(-74, to: .catalan).x == "menys setanta-quatre")
    #expect(translator.translate(-1_000_000, to: .catalan).x == "menys un milió")
}
