# NumberTranslator

NumberTranslator is a Swift Package that allows translating numbers into text in various languages.

Example:
```swift
import NumberTranslator

import NumberTranslator

let translator = NumberTranslator()
print(translator.translate(103, to: .english)) // one hundred and three
print(translator.translate(103, to: .german)) // Einhundertdrei
print(translator.translate(103, to: .romanNumerals)) // CIII

translator.englishUseAndAfterHundred = true
print(translator.translate(103, to: .english)) // one hundred and three

print(translator.translate(1.3, to: .spanish)) // uno coma tres
translator.spanishPuntoComma = .punto
print(translator.translate(1.3, to: .spanish)) // uno punto tres
```

## List of languages
ArabicNumerals, ArmenianNumerals, Armenian, Babylonian, BrazilianPortuguese, Catalan, Danish, English, Esperanto, EuropeanPortuguese, FinancialChinese, Finnish, French, German, Hieroglyphs, Hindi, Italian, Polish, RomanNumerals, Russian, SimplifiedChinese, Spanish, Swahili, ThaiNumerals, Thai, TraditionalChinese, Ukrainian, Vietnamese
