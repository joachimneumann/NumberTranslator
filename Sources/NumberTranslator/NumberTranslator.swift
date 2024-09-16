//
//  NumberTranslator.swift
//  TranslateNumbers
//
//  Created by Joachim Neumann on 22.08.24.
//

import Foundation

/// translate numbers to text in various languages
open class NumberTranslator {

    var languageImplementation: [Language : GeneralLanguage] = [:]
    
    /// List of available languages
    public enum Language: String, CaseIterable {
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
    public func name(_ language: Language) -> String {
        guard let language = languageImplementation[language] else { return "" }
        return language.name
    }
    
    /// Optional english name
    /// - Parameter language: language enum
    /// - Returns: String with english name, e.g., Vietnamese
    public func englishName(_ language: Language) -> String? {
        guard let language = languageImplementation[language] else { return nil }
        return language.englishName
    }
    
    /// Two letter language code
    /// - Parameter language: language enum
    /// - Returns: Code, e.g., vi
    public func code(_ language: Language) -> String? {
        guard let language = languageImplementation[language] else { return nil }
        return language.code
    }
    
    /// Number of digits in a group, often 3, but 42 for hindi
    /// - Parameter language: language enum
    /// - Returns: String with code
    public func groupSize(_ language: Language) -> Int {
        guard let language = languageImplementation[language] else { return 3 }
        return language.groupSize
    }
    
    public var englishUseAndAfterHundred: Bool {
        get {
            guard let language = languageImplementation[.english] else { return false }
            guard let language = language as? EnglishParameterProtocol else { return false }
            return language.englishUseAndAfterHundred
        }
        set(newValue) {
            guard let language = languageImplementation[.english] else { return }
            guard var language = language as? EnglishParameterProtocol else { return }
            language.englishUseAndAfterHundred = newValue
        }
    }

    public var germanCapitalisation: Bool {
        get {
            guard let language = languageImplementation[.german] else { return false }
            guard let language = language as? GermanParameterProtocol else { return false }
            return language.germanCapitalisation
        }
        set(newValue) {
            guard let language = languageImplementation[.german] else { return }
            guard var language = language as? GermanParameterProtocol else { return }
            language.germanCapitalisation = newValue
        }
    }
    
    public var babylonianAllowEmptyColumn: Bool {
        get {
            guard let language = languageImplementation[.babylonian] else { return false }
            guard let language = language as? BabylonianParameterProtocol else { return false }
            return language.babylonianAllowEmptyColumn
        }
        set(newValue) {
            guard let language = languageImplementation[.babylonian] else { return }
            guard var language = language as? BabylonianParameterProtocol else { return }
            language.babylonianAllowEmptyColumn = newValue
        }
    }

    public enum SpanishPuntoComma: String, CaseIterable {
        case coma
        case punto
    }
    public var spanishPuntoComma: SpanishPuntoComma {
        get {
            guard let language = languageImplementation[.spanish] else { return .coma }
            guard let language = language as? SpanishParameterProtocol else { return .coma }
            return language.spanishPuntoComma
        }
        set(newValue) {
            guard let language = languageImplementation[.spanish] else { return }
            guard var language = language as? SpanishParameterProtocol else { return }
            language.spanishPuntoComma = newValue
        }
    }

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
            guard let language = languageImplementation[.vietnamese] else { return .nghìn }
            guard let language = language as? VietnameseParameterProtocol else { return .nghìn }
            return language.vietnameseThousand
        }
        set(newValue) {
            guard let language = languageImplementation[.vietnamese] else { return }
            guard var language = language as? VietnameseParameterProtocol else { return }
            language.vietnameseThousand = newValue
        }
    }
    public var vietnameseSecondLast: VietnameseSecondLast {
        get {
            guard let language = languageImplementation[.vietnamese] else { return .linh }
            guard let language = language as? VietnameseParameterProtocol else { return .linh }
            return language.vietnameseSecondLast
        }
        set(newValue) {
            guard let language = languageImplementation[.vietnamese] else { return }
            guard var language = language as? VietnameseParameterProtocol else { return }
            language.vietnameseSecondLast = newValue
        }
    }
    public var vietnameseCompact: Bool {
        get {
            guard let language = languageImplementation[.vietnamese] else { return true }
            guard let language = language as? VietnameseParameterProtocol else { return true }
            return language.vietnameseCompact
        }
        set(newValue) {
            guard let language = languageImplementation[.vietnamese] else { return }
            guard var language = language as? VietnameseParameterProtocol else { return }
            language.vietnameseCompact = newValue
        }
    }

    
    /// translate from String
    /// - Parameters:
    ///   - s: the String number
    ///   - to: the language
    /// - Returns: translated number
    public func translate(_ s: String, to language: Language) -> String {
        guard let generalLanguage = languageImplementation[language] else { return "error" }
        return generalLanguage.translate(s)
    }
    
    /// translate from Int
    /// - Parameters:
    ///   - i: the Int number
    ///   - to: the language
    /// - Returns: translated number
    public func translate(_ i: Int, to language: Language) -> String {
        guard let generalLanguage = languageImplementation[language] else { return "error" }
        return generalLanguage.translate(i)
    }
    
    /// translate from Float
    /// - Parameters:
    ///   - f: the Float number
    ///   - to: the language
    /// - Returns: translated number
    public func translate(_ f: Float, to language: Language) -> String {
        translate(String(f), to: language)
    }
    
    /// translate from Double
    /// - Parameters:
    ///   - d: the Double number
    ///   - to: the language
    /// - Returns: translated number
    public func translate(_ d: Double, to language: Language) -> String {
        translate(String(d), to: language)
    }
        
    
    public init() {
        for languageEnum in Language.allCases {
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

public protocol GermanParameterProtocol {
    var germanCapitalisation: Bool { get set }
}

public protocol EnglishParameterProtocol {
    var englishUseAndAfterHundred: Bool { get set }
}

public protocol BabylonianParameterProtocol {
    var babylonianAllowEmptyColumn: Bool { get set }
}

public protocol SpanishParameterProtocol {
    var spanishPuntoComma: NumberTranslator.SpanishPuntoComma { get set }
}

public protocol VietnameseParameterProtocol {
    var vietnameseThousand: NumberTranslator.VietnameseThousand { get set }
    var vietnameseSecondLast: NumberTranslator.VietnameseSecondLast { get set }
    var vietnameseCompact: Bool { get set }
}
