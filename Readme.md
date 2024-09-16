# NumberTranslator

![languages](https://github.com/user-attachments/assets/f0322871-82dc-4d83-9669-3a825017bc1b)

NumberTranslator is a Swift Package that allows translating numbers into text in various languages.

## How to use
```swift
import NumberTranslator

let translator = NumberTranslator()
print(translator.translate(103, to: .english))       // one hundred and three
print(translator.translate(103, to: .german))        // Einhundertdrei
print(translator.translate(103, to: .romanNumerals)) // CIII
```

## parameters
Some languages offer paramters. For example:
```swift
translator.englishUseAndAfterHundred = false
print(translator.translate(103, to: .english)) // one hundred three

print(translator.translate(1.3, to: .spanish)) // uno coma tres
translator.spanishPuntoComma = .punto
print(translator.translate(1.3, to: .spanish)) // uno punto tres
```

## List of languages
ArabicNumerals, ArmenianNumerals, Armenian, Babylonian, BrazilianPortuguese, Catalan, Danish, English, Esperanto, EuropeanPortuguese, FinancialChinese, Finnish, French, German, Hieroglyphs, Hindi, Italian, Polish, RomanNumerals, Russian, SimplifiedChinese, Spanish, Swahili, ThaiNumerals, Thai, TraditionalChinese, Ukrainian, Vietnamese


## Contribute with bugfixes
If you find a bug (and there are probably a larger number of bugs), any contributions are welcome.

## How to add a new language
You are welcome to provide the ground truth for a new language. Look at examples in the folder Tests/Groundtruth, copy for example Tests/Groundtruth/english.txt, rename it and fill in the correct strings for the new language.
Then crewate a pull request or write me an email at joachim@joachimneumann.com
