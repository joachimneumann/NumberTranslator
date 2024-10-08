//
//  _generalTests.swift
//  NumberTranslator
//
//  Created by Joachim Neumann on 06.10.24.
//

import Testing
@testable import NumberTranslator

@Test func general() {
    let translator = NumberTranslator()
    
    translator.englishUseAndAfterHundred = false
    #expect(translator.translate("01428571428571428571428571428571428571429", to: .english).x == "too large")
    #expect(translator.translate("0.1428571428571428571428571428571428571429", to: .english).x == "zero point one four two eight five seven one four two eight...")
    let x1 = translator.translate("8888888888888888", to: .english)
    let x2 = translator.translate("8888888888888888.44", to: .english)
    #expect(x1 == "too large")
    #expect(x2 == "too large")
    let x3 = translator.translate("8.8888888888e15", to: .english)
    #expect(x3 == "eight point eight eight eight eight eight eight eight eight eight eight EE fifteen")
    let x4 = translator.translate("8.1234567890", to: .english)
    #expect(x4 == "eight point one two three four five six seven eight nine zero")
    let x5 = translator.translate("8.1234567890123456", to: .english)
    #expect(x5 == "eight point one two three four five six seven eight nine zero...")

}
