//
//  _generalTests.swift
//  NumberTranslator
//
//  Created by Joachim Neumann on 06.10.24.
//

import Testing
@testable import NumberTranslator

@Test func _general() {
    let translator = NumberTranslator()
    var x1, x2, x3, x4,x5: String
    translator.englishUseAndAfterHundred = false
    translator.maxLength = 10
    #expect(translator.translate("01428571428571428571428571428571428571429", to: .english).x == "too large")
    #expect(translator.translate("0.1428571428571428571428571428571428571429", to: .english).x == "zero point one four two eight five seven one four")
    x1 = translator.translate("8888888888888888", to: .english)
    x2 = translator.translate("8888888888888888.44", to: .english)
    #expect(x1 == "too large")
    #expect(x2 == "too large")
    x3 = translator.translate("8.8888888888e15", to: .english)
    #expect(x3 == "eight point eight eight eight eight eight EE fifteen")
    x4 = translator.translate("8.1234567", to: .english)
    #expect(x4 == "eight point one two three four five six seven")
    x4 = translator.translate("8.12345678", to: .english)
    #expect(x4 == "eight point one two three four five six seven eight")
    x4 = translator.translate("8.123456789", to: .english)
    #expect(x4 == "eight point one two three four five six seven eight")
    x4 = translator.translate("8.1234567890", to: .english)
    #expect(x4 == "eight point one two three four five six seven eight")
    x5 = translator.translate("8.1234567890123456", to: .english)
    #expect(x5 == "eight point one two three four five six seven eight")

    translator.maxLength = 6
    #expect(translator.translate("01428571428571428571428571428571428571429", to: .english).x == "too large")
    #expect(translator.translate("0.1428571428571428571428571428571428571429", to: .english).x == "zero point one four two eight")
    x1 = translator.translate("8888888888888888", to: .english)
    x2 = translator.translate("8888888888888888.44", to: .english)
    #expect(x1 == "too large")
    #expect(x2 == "too large")
    x3 = translator.translate("8.8888888888e15", to: .english)
    #expect(x3 == "eight point eight EE fifteen")
    x4 = translator.translate("8.123", to: .english)
    #expect(x4 == "eight point one two three")
    x4 = translator.translate("8.1234", to: .english)
    #expect(x4 == "eight point one two three four")
    x5 = translator.translate("8.12345", to: .english)
    #expect(x5 == "eight point one two three four")

}
