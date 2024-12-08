//
//  NumberTranslator.swift
//  TranslateNumbers
//
//  Created by Joachim Neumann on 22.08.24.
//

import Foundation

/// translate numbers to text in various languages
open class NumberTranslator {

    open var languageImplementation: [LanguageEnum : GeneralLanguage] = [:]
    var maxLength: Int
    
    /// List of available languages
    ///
    public enum LanguageEnum: String, CaseIterable, Identifiable {
        public var id: String { rawValue }
        case arabicNumerals = "arabicNumerals"
        case armenian = "armenian"
        case armenianNumerals = "armenianNumerals"
        case babylonian = "babylonian"
        case catalan = "catalan"
        case financialChinese = "financialChinese"
        case simplifiedChinese = "simplifiedChinese"
        case traditionalChinese = "traditionalChinese"
        case danish = "danish"
        case english = "english"
        case esperanto = "esperanto"
        case finnish = "finnish"
        case french = "french"
        case german = "german"
        case hindi = "hindi"
        case hieroglyphs = "hieroglyphs"
        case italian = "italian"
        case polish = "polish"
        case europeanPortuguese = "europeanPortuguese"
        case brazilianPortuguese = "brazilianPortuguese"
        case romanNumerals = "romanNumerals"
        case russian = "russian"
        case spanish = "spanish"
        case swahili = "swahili"
        case thai = "thai"
        case thaiNumerals = "thaiNumerals"
        case ukrainian = "ukrainian"
        case vietnamese = "vietnamese"
    }
    
    /// The name of the language (in that language)
    /// - Parameter language: language enum
    /// - Returns: String with name, e.g., Deutsch or Tiếng Việt
    public func name(_ language: LanguageEnum) -> String {
        guard let language = languageImplementation[language] else { return "" }
        return language.name
    }
    
    /// Optional english name
    /// - Parameter language: language enum
    /// - Returns: String with english name, e.g., Vietnamese
    public func englishName(_ language: LanguageEnum) -> String? {
        guard let language = languageImplementation[language] else { return nil }
        return language.englishName
    }
    
    /// Two letter language code
    /// - Parameter language: language enum
    /// - Returns: Code, e.g., vi
    public func code(_ language: LanguageEnum) -> String? {
        guard let language = languageImplementation[language] else { return nil }
        return language.code
    }
    
    /// Number of digits in a group, often 3, but 42 for hindi
    /// - Parameter language: language enum
    /// - Returns: String with code
    public func groupSize(_ language: LanguageEnum) -> Int {
        guard let language = languageImplementation[language] else {
            return 3
        }
        return language.groupSize
    }
    
    
    ///
    /// English
    ///
    public var englishUseAndAfterHundred: Bool {
        get {
            if let language = languageImplementation[.english] as? English {
                return language.englishUseAndAfterHundred
            } else {
                return false
            }
        }
        set(newValue) {
            if let language = languageImplementation[.english] as? English {
                return language.englishUseAndAfterHundred = newValue
            }
        }
    }
    
    
    ///
    /// German
    ///
    public var germanCapitalisation: Bool {
        get {
            if let language = languageImplementation[.german] as? German {
                return language.germanCapitalisation
            } else {
                return false
            }
        }
        set(newValue) {
            if let language = languageImplementation[.german] as? German {
                return language.germanCapitalisation = newValue
            }
        }
    }
    
    

    ///
    /// Vietnamese
    ///
    public enum VietnameseThousand: String, CaseIterable {
        case ngàn
        case nghìn
    }

    public enum VietnameseSecondLast: String, CaseIterable {
        case linh
        case lẻ
    }
   
    public var vietnameseThousand: VietnameseThousand {
        get {
            if let language = languageImplementation[.vietnamese] as? Vietnamese {
                return language.vietnameseThousand
            } else {
                return VietnameseThousand.nghìn
            }
        }
        set(newValue) {
            if let language = languageImplementation[.vietnamese] as? Vietnamese {
                return language.vietnameseThousand = newValue
            }
        }
    }

    public var vietnameseSecondLast: VietnameseSecondLast {
        get {
            if let language = languageImplementation[.vietnamese] as? Vietnamese {
                return language.vietnameseSecondLast
            } else {
                return VietnameseSecondLast.lẻ
            }
        }
        set(newValue) {
            if let language = languageImplementation[.vietnamese] as? Vietnamese {
                return language.vietnameseSecondLast = newValue
            }
        }
    }

    public var vietnameseCompact: Bool {
        get {
            if let language = languageImplementation[.vietnamese] as? Vietnamese {
                return language.vietnameseCompact
            } else {
                return false
            }
        }
        set(newValue) {
            if let language = languageImplementation[.vietnamese] as? Vietnamese {
                return language.vietnameseCompact = newValue
            }
        }
    }

    
    ///
    /// Babylonian
    ///
    public var babylonianAllowEmptyColumn: Bool {
        get {
            if let language = languageImplementation[.babylonian] as? Babylonian {
                return language.babylonianAllowEmptyColumn
            } else {
                return false
            }
        }
        set(newValue) {
            if let language = languageImplementation[.babylonian] as? Babylonian {
                return language.babylonianAllowEmptyColumn = newValue
            }
        }
    }

    
    ///
    /// Spanish
    ///
    public enum SpanishPuntoComa: String, CaseIterable {
        case coma
        case punto
    }
    
    public var spanishPuntoComa: SpanishPuntoComa {
        get {
            if let language = languageImplementation[.spanish] as? Spanish {
                return language.spanishPuntoComa
            } else {
                return SpanishPuntoComa.coma
            }
        }
        set(newValue) {
            if let language = languageImplementation[.spanish] as? Spanish {
                return language.spanishPuntoComa = newValue
            }
        }
    }


    ///
    /// Roman Numerals
    ///
    public var romanNumeralsUseVinculum: Bool {
        get {
            if let language = languageImplementation[.romanNumerals] as? RomanNumerals {
                return language.romanNumeralsUseVinculum
            } else {
                return false
            }
        }
        set(newValue) {
            if let language = languageImplementation[.romanNumerals] as? RomanNumerals {
                return language.romanNumeralsUseVinculum = newValue
            }
        }
    }
    
    /// translate from String
    /// - Parameters:
    ///   - s: the String number
    ///   - to: the language
    /// - Returns: translated number
    public func translate(_ s: String, to language: LanguageEnum) -> String {
        guard let generalLanguage = languageImplementation[language] else { return "error" }
        generalLanguage.maxLength = maxLength
        return generalLanguage.translate(s)
    }
    
    /// translate from Int
    /// - Parameters:
    ///   - i: the Int number
    ///   - to: the language
    /// - Returns: translated number
    public func translate(_ i: Int, to language: LanguageEnum) -> String {
        guard let generalLanguage = languageImplementation[language] else { return "error" }
        generalLanguage.maxLength = maxLength
        return generalLanguage.translate(i)
    }
    
    /// translate from Float
    /// - Parameters:
    ///   - f: the Float number
    ///   - to: the language
    /// - Returns: translated number
    public func translate(_ f: Float, to language: LanguageEnum) -> String {
        translate(String(f), to: language)
    }
    
    /// translate from Double
    /// - Parameters:
    ///   - d: the Double number
    ///   - to: the language
    /// - Returns: translated number
    public func translate(_ d: Double, to language: LanguageEnum) -> String {
        translate(String(d), to: language)
    }
        
    
    public init(maxLength: Int = 30) {
        self.maxLength = maxLength
        for languageEnum in LanguageEnum.allCases {
            switch languageEnum {
            case .arabicNumerals:
                languageImplementation[languageEnum] = ArabicNumerals()
            case .armenian:
                languageImplementation[languageEnum] = Armenian()
            case .armenianNumerals:
                languageImplementation[languageEnum] = ArmenianNumerals()
            case .babylonian:
                languageImplementation[languageEnum] = Babylonian()
            case .catalan:
                languageImplementation[languageEnum] = Catalan()
            case .financialChinese:
                languageImplementation[languageEnum] = Chinese(variant: .financial)
            case .simplifiedChinese:
                languageImplementation[languageEnum] = Chinese(variant: .simplified)
            case .traditionalChinese:
                languageImplementation[languageEnum] = Chinese(variant: .traditional)
            case .danish:
                languageImplementation[languageEnum] = Danish()
            case .english:
                languageImplementation[languageEnum] = English()
            case .esperanto:
                languageImplementation[languageEnum] = Esperanto()
            case .finnish:
                languageImplementation[languageEnum] = Finnish()
            case .french:
                languageImplementation[languageEnum] = French()
            case .german:
                languageImplementation[languageEnum] = German()
            case .hindi:
                languageImplementation[languageEnum] = Hindi()
            case .hieroglyphs:
                languageImplementation[languageEnum] = Hieroglyphs()
            case .italian:
                languageImplementation[languageEnum] = Italian()
            case .polish:
                languageImplementation[languageEnum] = Polish()
            case .europeanPortuguese:
                languageImplementation[languageEnum] = Portuguese(variant: .european)
            case .brazilianPortuguese:
                languageImplementation[languageEnum] = Portuguese(variant: .brazilian)
            case .romanNumerals:
                languageImplementation[languageEnum] = RomanNumerals()
            case .russian:
                languageImplementation[languageEnum] = Russian()
            case .spanish:
                languageImplementation[languageEnum] = Spanish()
            case .swahili:
                languageImplementation[languageEnum] = Swahili()
            case .thai:
                languageImplementation[languageEnum] = Thai()
            case .thaiNumerals:
                languageImplementation[languageEnum] = ThaiNumerals()
            case .ukrainian:
                languageImplementation[languageEnum] = Ukrainian()
            case .vietnamese:
                languageImplementation[languageEnum] = Vietnamese()
            }
        }
    }
}
