# NumberTranslator

NumberTranslator is a Swift Package that allows translating numbers into text in various languages.

Example:
```swift
import NumberTranslator

var translator = EnglishImplementation()
print(translator.translate(103)) // one hundred and three
translator.englishUseAndAfterHundred = false
print(translator.translate(103)) // one hundred three

translator = SwahiliImplementation()
print(translator.translate(103)) // mia moja na tatu
```

## List of languages
