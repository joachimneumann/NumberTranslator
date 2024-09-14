//
//  NumberTranslator.swift
//  TranslateNumbers
//
//  Created by Joachim Neumann on 22.08.24.
//

import Foundation

// translate numbers to text in various languages
public class Translator {
    public enum SpanishPuntoComma: String, CaseIterable {
        case coma
        case punto
    }
    public enum VietnameseThousand: String, CaseIterable {
        case ngàn
        case nghìn
    }

    public enum VietnameseSecondLast: String, CaseIterable {
        case linh
        case lẻ
    }

   
    // the name of the language
    public var name: String { implementation.name }
    // the optional english name of the language
    public var englishName: String? { implementation.englishName }
    // the code of the language, which is used to find a voice
    public var code: String? { implementation.code }
    public var groupSize: Int { implementation.groupSize }
    public func translate(_ s: String) -> String { implementation.translate(s) }
    public func translate(_ i: Int)    -> String { implementation.translate(i) }
    public func translate(_ f: Float)  -> String { implementation.translate(f) }
    public func translate(_ d: Double) -> String { implementation.translate(d) }
    
    private var implementation: GeneralLanguage
    
    init(_ implementation: GeneralLanguage) {
        self.implementation = implementation
    }
    
    public var germanCapitalisation: Bool {
        get {
            if let selfWithProtocol = self.implementation as? GermanParameterProtocol {
                selfWithProtocol.germanCapitalisation
            } else {
                false
            }
        }
        set(newValue) {
            if var selfWithProtocol = self.implementation as? GermanParameterProtocol {
                selfWithProtocol.germanCapitalisation = newValue
            }
        }
    }
    
    public var englishUseAndAfterHundred: Bool {
        get {
            if let selfWithProtocol = self.implementation as? EnglishParameterProtocol {
                selfWithProtocol.englishUseAndAfterHundred
            } else {
                false
            }
        }
        set(newValue) {
            if var selfWithProtocol = self.implementation as? EnglishParameterProtocol {
                selfWithProtocol.englishUseAndAfterHundred = newValue
            }
        }
    }
    public var babylonianAllowEmptyColumn: Bool {
        get {
            if let selfWithProtocol = self.implementation as? BabylonianParameterProtocol {
                selfWithProtocol.babylonianAllowEmptyColumn
            } else {
                false
            }
        }
        set(newValue) {
            if var selfWithProtocol = self.implementation as? BabylonianParameterProtocol {
                selfWithProtocol.babylonianAllowEmptyColumn = newValue
            }
        }
    }
    public var puntoComma: SpanishPuntoComma {
        get {
            if let selfWithProtocol = self.implementation as? SpanishParameterProtocol {
                selfWithProtocol.spanishPuntoComma
            } else {
                .punto
            }
        }
        set(newValue) {
            if var selfWithProtocol = self.implementation as? SpanishParameterProtocol {
                selfWithProtocol.spanishPuntoComma = newValue
            }
        }
    }
    public var vietnameseThousand: VietnameseThousand {
        get {
            if let selfWithProtocol = self.implementation as? VietnameseParameterProtocol {
                selfWithProtocol.vietnameseThousand
            } else {
                .nghìn
            }
        }
        set(newValue) {
            if var selfWithProtocol = self.implementation as? VietnameseParameterProtocol {
                selfWithProtocol.vietnameseThousand = newValue
            }
        }
    }
    public var vietnameseSecondLast: VietnameseSecondLast {
        get {
            if let selfWithProtocol = self.implementation as? VietnameseParameterProtocol {
                selfWithProtocol.vietnameseSecondLast
            } else {
                .lẻ
            }
        }
        set(newValue) {
            if var selfWithProtocol = self.implementation as? VietnameseParameterProtocol {
                selfWithProtocol.vietnameseSecondLast = newValue
            }
        }
    }
    public var vietnameseCompact: Bool {
        get {
            if let selfWithProtocol = self.implementation as? VietnameseParameterProtocol {
                selfWithProtocol.vietnameseCompact
            } else {
                false
            }
        }
        set(newValue) {
            if var selfWithProtocol = self.implementation as? VietnameseParameterProtocol {
                selfWithProtocol.vietnameseCompact = newValue
            }
        }
    }
}


public class Translators {
    public var list: [Translator] = []
    private func add(_ language: GeneralLanguage) {
        list.append(Translator(language))
    }
    public init() {
        add(ArabicNumeralsImplementation())
        add(ArmenianImplementation())
        add(ArmenianNumeralsImplementation())
        add(BabylonianImplementation())
        add(CatalanImplementation())
        add(ChineseImplementation(variant: ChineseImplementation.Variant.financial))
        add(ChineseImplementation(variant: ChineseImplementation.Variant.simplified))
        add(ChineseImplementation(variant: ChineseImplementation.Variant.traditional))
        add(DanishImplementation())
        add(EnglishImplementation())
        add(EsperantoImplementation())
        add(FinnishImplementation())
        add(FrenchImplementation())
        add(GermanImplementation())
        add(HindiImplementation())
        add(HieroglyphsImplementation())
        add(ItalianImplementation())
        add(PolishImplementation())
        add(PortugueseImplementation(variant: PortugueseImplementation.Variant.european))
        add(PortugueseImplementation(variant: PortugueseImplementation.Variant.brazilian))
        add(RomanNumeralsImplementation())
        add(RussianImplementation())
        add(SpanishImplementation())
        add(SwahiliImplementation())
        add(ThaiImplementation())
        add(ThaiNumeralsImplementation())
        add(UkrainianImplementation())
        add(VietnameseImplementation())
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
    var spanishPuntoComma: Translator.SpanishPuntoComma { get set }
}

public protocol VietnameseParameterProtocol {
    var vietnameseThousand: Translator.VietnameseThousand { get set }
    var vietnameseSecondLast: Translator.VietnameseSecondLast { get set }
    var vietnameseCompact: Bool { get set }
}
