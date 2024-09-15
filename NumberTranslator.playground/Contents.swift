import NumberTranslator

let translator = NumberTranslator()
print(translator.translate(103, to: .english))        // one hundred and three
print(translator.translate(103, to: .german))         // Einhundertdrei
print(translator.translate(103, to: .romanNumerals))  // CIII

translator.englishUseAndAfterHundred = true
print(translator.translate(103, to: .english)) // one hundred and three

print(translator.translate(1.3, to: .spanish)) // uno coma tres
translator.spanishPuntoComma = .punto
print(translator.translate(1.3, to: .spanish)) // uno punto tres
