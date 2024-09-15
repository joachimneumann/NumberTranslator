//
//  NumberTranslator.swift
//  TranslateNumbers
//
//  Created by Joachim Neumann on 22.08.24.
//

import Foundation

/// translate numbers to text in various languages
public class NumberTranslator {
    public enum Language: String, CaseIterable {
        case arabicNumerals
        case armenian
        case armenianNumerals
        case babylonian
        case catalan
        case financialChinese
        case simplifiedChinese
        case traditionalChinese
        case danish
        case english
        case esperanto
        case finnish
        case french
        case german
        case hindi
        case hieroglyphs
        case italian
        case polish
        case europeanPortuguese
        case brazilianPortuguese
        case romanNumerals
        case russian
        case spanish
        case swahili
        case thai
        case thaiNumerals
        case ukrainian
        case vietnamese
    }

    public var currentLanguage: Language
    
    public var englishName: String? {
        guard let language = dict[currentLanguage] else { return nil }
        return language.englishName
    }
    public var code: String? {
        guard let language = dict[currentLanguage] else { return nil }
        return language.code
    }
    public var groupSize: Int {
        guard let language = dict[currentLanguage] else { return 3 }
        return language.groupSize
    }

    public var englishUseAndAfterHundred: Bool {
        get {
            guard let language = dict[.english] else { return false }
            guard let english = language as? EnglishParameterProtocol else { return false }
            return english.englishUseAndAfterHundred
        }
        set(newValue) {
            guard let language = dict[.english] else { return }
            guard var language = language as? EnglishParameterProtocol else { return }
            language.englishUseAndAfterHundred = newValue
        }
    }

    public enum SpanishPuntoComma: String, CaseIterable {
        case coma
        case punto
    }
    public var spanishPuntoComma: SpanishPuntoComma {
        get {
            guard let language = dict[.spanish] else { return .coma }
            guard let language = language as? SpanishParameterProtocol else { return .coma }
            return language.spanishPuntoComma
        }
        set(newValue) {
            guard let language = dict[.spanish] else { return }
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
   
    /// translate from String
    /// - Parameters:
    ///   - s: the String number
    ///   - to: the language
    /// - Returns: translated number
    public func translate(_ s: String) -> String {
        guard let language = dict[currentLanguage] else {return "error"}
        return language.translate(s)
    }
    /// translate from Int
    /// - Parameters:
    ///   - i: the Int number
    ///   - to: the language
    /// - Returns: translated number
    public func translate(_ i: Int) -> String {
        guard let language = dict[currentLanguage] else {return "error"}
        return language.translate(i)
    }
    /// translate from Float
    /// - Parameters:
    ///   - f: the Float number
    ///   - to: the language
    /// - Returns: translated number
    public func translate(_ f: Float) -> String {
        translate(String(f))
    }
    /// translate from Double
    /// - Parameters:
    ///   - d: the Double number
    ///   - to: the language
    /// - Returns: translated number
    public func translate(_ d: Double) -> String {
        translate(String(d))
    }
        
    private var dict: [Language : GeneralLanguage] = [:]
    
    public init() {
        currentLanguage = .english
        for language in Language.allCases {
            switch language {
            case .arabicNumerals:
                dict[language] = ArabicNumeralsImplementation()
            case .armenian:
                dict[language] = ArmenianImplementation()
            case .armenianNumerals:
                dict[language] = ArmenianNumeralsImplementation()
            case .babylonian:
                dict[language] = BabylonianImplementation()
            case .catalan:
                dict[language] = CatalanImplementation()
            case .financialChinese:
                dict[language] = ChineseImplementation(variant: .financial)
            case .simplifiedChinese:
                dict[language] = ChineseImplementation(variant: .simplified)
            case .traditionalChinese:
                dict[language] = ChineseImplementation(variant: .traditional)
            case .danish:
                dict[language] = DanishImplementation()
            case .english:
                dict[language] = EnglishImplementation()
            case .esperanto:
                dict[language] = EsperantoImplementation()
            case .finnish:
                dict[language] = FrenchImplementation()
            case .french:
                dict[language] = FrenchImplementation()
            case .german:
                dict[language] = GermanImplementation()
            case .hindi:
                dict[language] = HindiImplementation()
            case .hieroglyphs:
                dict[language] = HieroglyphsImplementation()
            case .italian:
                dict[language] = ItalianImplementation()
            case .polish:
                dict[language] = PolishImplementation()
            case .europeanPortuguese:
                dict[language] = PortugueseImplementation(variant: .european)
            case .brazilianPortuguese:
                dict[language] = PortugueseImplementation(variant: .brazilian)
            case .romanNumerals:
                dict[language] = RomanNumeralsImplementation()
            case .russian:
                dict[language] = RussianImplementation()
            case .spanish:
                dict[language] = SpanishImplementation()
            case .swahili:
                dict[language] = SwahiliImplementation()
            case .thai:
                dict[language] = ThaiImplementation()
            case .thaiNumerals:
                dict[language] = ThaiNumeralsImplementation()
            case .ukrainian:
                dict[language] = UkrainianImplementation()
            case .vietnamese:
                dict[language] = VietnameseImplementation()
            }
        }
//        self.implementation = implementation
    }
    
//    public var germanCapitalisation: Bool {
//        get {
//            if let selfWithProtocol = self.implementation as? GermanParameterProtocol {
//                selfWithProtocol.germanCapitalisation
//            } else {
//                false
//            }
//        }
//        set(newValue) {
//            if var selfWithProtocol = self.implementation as? GermanParameterProtocol {
//                selfWithProtocol.germanCapitalisation = newValue
//            }
//        }
//    }
//    
//    public var englishUseAndAfterHundred: Bool {
//        get {
//            if let selfWithProtocol = self.implementation as? EnglishParameterProtocol {
//                selfWithProtocol.englishUseAndAfterHundred
//            } else {
//                false
//            }
//        }
//        set(newValue) {
//            if var selfWithProtocol = self.implementation as? EnglishParameterProtocol {
//                selfWithProtocol.englishUseAndAfterHundred = newValue
//            }
//        }
//    }
//    public var babylonianAllowEmptyColumn: Bool {
//        get {
//            if let selfWithProtocol = self.implementation as? BabylonianParameterProtocol {
//                selfWithProtocol.babylonianAllowEmptyColumn
//            } else {
//                false
//            }
//        }
//        set(newValue) {
//            if var selfWithProtocol = self.implementation as? BabylonianParameterProtocol {
//                selfWithProtocol.babylonianAllowEmptyColumn = newValue
//            }
//        }
//    }
//    public var puntoComma: SpanishPuntoComma {
//        get {
//            if let selfWithProtocol = self.implementation as? SpanishParameterProtocol {
//                selfWithProtocol.spanishPuntoComma
//            } else {
//                .punto
//            }
//        }
//        set(newValue) {
//            if var selfWithProtocol = self.implementation as? SpanishParameterProtocol {
//                selfWithProtocol.spanishPuntoComma = newValue
//            }
//        }
//    }
//    public var vietnameseThousand: VietnameseThousand {
//        get {
//            if let selfWithProtocol = self.implementation as? VietnameseParameterProtocol {
//                selfWithProtocol.vietnameseThousand
//            } else {
//                .nghìn
//            }
//        }
//        set(newValue) {
//            if var selfWithProtocol = self.implementation as? VietnameseParameterProtocol {
//                selfWithProtocol.vietnameseThousand = newValue
//            }
//        }
//    }
//    public var vietnameseSecondLast: VietnameseSecondLast {
//        get {
//            if let selfWithProtocol = self.implementation as? VietnameseParameterProtocol {
//                selfWithProtocol.vietnameseSecondLast
//            } else {
//                .lẻ
//            }
//        }
//        set(newValue) {
//            if var selfWithProtocol = self.implementation as? VietnameseParameterProtocol {
//                selfWithProtocol.vietnameseSecondLast = newValue
//            }
//        }
//    }
//    public var vietnameseCompact: Bool {
//        get {
//            if let selfWithProtocol = self.implementation as? VietnameseParameterProtocol {
//                selfWithProtocol.vietnameseCompact
//            } else {
//                false
//            }
//        }
//        set(newValue) {
//            if var selfWithProtocol = self.implementation as? VietnameseParameterProtocol {
//                selfWithProtocol.vietnameseCompact = newValue
//            }
//        }
//    }
}


//public class Translators {
//    public var list: [Translator] = []
//    private func add(_ language: GeneralLanguage) {
//        list.append(Translator(language))
//    }
//    public init() {
//        add(ArabicNumeralsImplementation())
//        add(ArmenianImplementation())
//        add(ArmenianNumeralsImplementation())
//        add(BabylonianImplementation())
//        add(CatalanImplementation())
//        add(ChineseImplementation(variant: ChineseImplementation.Variant.financial))
//        add(ChineseImplementation(variant: ChineseImplementation.Variant.simplified))
//        add(ChineseImplementation(variant: ChineseImplementation.Variant.traditional))
//        add(DanishImplementation())
//        add(EnglishImplementation())
//        add(EsperantoImplementation())
//        add(FinnishImplementation())
//        add(FrenchImplementation())
//        add(GermanImplementation())
//        add(HindiImplementation())
//        add(HieroglyphsImplementation())
//        add(ItalianImplementation())
//        add(PolishImplementation())
//        add(PortugueseImplementation(variant: PortugueseImplementation.Variant.european))
//        add(PortugueseImplementation(variant: PortugueseImplementation.Variant.brazilian))
//        add(RomanNumeralsImplementation())
//        add(RussianImplementation())
//        add(SpanishImplementation())
//        add(SwahiliImplementation())
//        add(ThaiImplementation())
//        add(ThaiNumeralsImplementation())
//        add(UkrainianImplementation())
//        add(VietnameseImplementation())
//    }
//}

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
