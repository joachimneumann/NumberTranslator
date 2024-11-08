//
//  RomanNumerals.swift
//  TranslateNumbers
//
//  Created by Joachim Neumann on 24.08.24.
//

import Foundation

class RomanNumerals: GeneralLanguage  {
        
    var romanNumeralsUseVinculum: Bool {
        get {
            if UserDefaults.standard.object(forKey: #function) == nil {
                UserDefaults.standard.set(true, forKey: #function)
            }
            return UserDefaults.standard.bool(forKey: #function)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: #function)
        }
    }
    
    override init() {
        super.init()
        name = "Roman Numerals"
        code = "la"
        allowZero = false
        allowNegative = false
        allowFraction = false
        allowExponent = false
    }
    
    override func fromUInt(_ i: UInt) -> String {
        if i <= 3_999 {
            return romanUpTp3999(i)
        } else if romanNumeralsUseVinculum {
            if i <= 3_999_999 {
                let above_thousand = i / 1000
                let below_thousand = i - above_thousand * 1000
                var ret = romanUpTp3999(above_thousand) + "_OVERLINE_"
                if below_thousand > 0 {
                    ret += wordSplitter + romanUpTp3999(below_thousand)
                }
                return ret
            }
        }
        return "too large"
    }
    
    private func romanUpTp3999(_ i: UInt) -> String {
        let values: [UInt] = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        let numerals = ["M"+wordSplitter, "CM", "D", "CD", "C"+wordSplitter, "XC", "L", "XL", "X"+wordSplitter, "IX", "V", "IV", "I"]
        
        var result = ""
        var remaining = i
        
        for (index, value) in values.enumerated() {
            while remaining >= value {
                result += numerals[index]
                remaining -= value
            }
        }
        return result
    }
}
