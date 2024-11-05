//
//  ArabicNumerals.swift
//  NumberTranslator
//
//  Created by Joachim Neumann on 26.08.24.
//

import Foundation

class ArabicNumerals: DigitLanguage  {
    override init() {
        super.init()
        name = "الترقيم العرب"
        englishName = "Arabic Numerals"
        code = "ar"
        beforeAndAfterDotString = wordSplitter
    }

    override func _0_9(_ i: UInt) -> String {
        switch i {
        case 0: return "٠"
        case 1: return "١"
        case 2: return "٢"
        case 3: return "٣"
        case 4: return "٤"
        case 5: return "٥"
        case 6: return "٦"
        case 7: return "٧"
        case 8: return "٨"
        case 9: return "٩"
        default: return "read_0_9: outside range"
        }
    }
    
}
