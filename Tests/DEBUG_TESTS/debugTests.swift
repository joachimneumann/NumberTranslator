//
//  debugTests.swift
//  NumberTranslator
//
//  Created by Joachim Neumann on 06.10.24.
//

import Testing
@testable import NumberTranslator

@Test func debugTests() {
    let translator = NumberTranslator()
    
    translator.englishUseAndAfterHundred = false
//    #expect(translator.translate("01428571428571428571428571428571428571429", to: .english).x == "too large")
//    #expect(translator.translate("0.1428571428571428571428571428571428571429", to: .english).x == "zero point one four two eight five seven one four two eight...")
    let x1 = translator.translate("8888888888888888", to: .english)
    let x2 = translator.translate("8888888888888888.44", to: .english)
    let x3 = "D"
}
