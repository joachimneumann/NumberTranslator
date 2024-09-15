import NumberTranslator

let translator = NumberTranslator()
translator.currentLanguage = .english
print(translator.translate(103)) // one hundred and three
translator.currentLanguage = .german
print(translator.translate(103)) // Einhundertdrei
translator.currentLanguage = .romanNumerals
print(translator.translate(103)) // CIII

translator.currentLanguage = .english
translator.englishUseAndAfterHundred = true
print(translator.translate(103)) // one hundred and three

translator.currentLanguage = .spanish
print(translator.translate(1.3)) // uno coma tres
translator.spanishPuntoComma = .punto
print(translator.translate(1.3)) // uno punto tres
