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
}
