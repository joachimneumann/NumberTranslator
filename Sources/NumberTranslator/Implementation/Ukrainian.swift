//
//  Ukrainian.swift
//  NumberTranslator
//
//  Created by Joachim Neumann on 26.08.24.
//

import Foundation

class Ukrainian: Group3Language  {
    override init() {
        super.init()
        name = "українська"
        englishName = "Ukrainian"
        code = "uk"
        _20_99_connector = " "
        negativeString = "мінус"
        afterNegative = " "
        dotString = "кома"
        before_hundreds = ""
    }
    
    override func _0_9(_ i: UInt) -> String {
        switch i {
        case 0: return "нуль"
        case 1: return "один"
        case 2: return "два"
        case 3: return "три"
        case 4: return "чотири"
        case 5: return "п'ять"
        case 6: return "шість"
        case 7: return "сім"
        case 8: return "вісім"
        case 9: return "дев'ять"
        default:
            fatalError("_0_9() parameter \(i)")
        }
    }
    
    override func _10s(_ i: UInt) -> String {
        switch i {
        case 1:     return "десять"
        case 2:     return "двадцять"
        case 3:     return "тридцять"
        case 4:     return "сорок"
        case 5:     return "п'ятдесят"
        case 6:     return "шістдесят"
        case 7:     return "сімдесят"
        case 8:     return "вісімдесят"
        case 9:     return "дев'яносто"
        default:
            fatalError("_10s() parameter \(i)")
        }
    }
    
    override func _11_19(_ i: UInt) -> String {
        switch i {
        case 11: return "одинадцять"
        case 12: return "дванадцять"
        case 13: return "тринадцять"
        case 14: return "чотирнадцять"
        case 15: return "п'ятнадцять"
        case 16: return "шістнадцять"
        case 17: return "сімнадцять"
        case 18: return "вісімнадцять"
        case 19: return "дев'ятнадцять"
        default:
            fatalError("_11_19() parameter \(i)")
        }
    }
    
    override func _100_999(_ i: UInt) -> String {
        let hundreds: UInt = i / 100
        let below: UInt = i - hundreds * 100
        var ret = ""
        switch hundreds {
        case 1:
            ret = "сто"
        case 2:
            ret = "двісті"
        case 3:
            ret = "триста"
        case 4:
            ret = "чотириста"
        case 5:
            ret = "п'ятсот"
        case 6:
            ret = "шістсот"
        case 7:
            ret = "сімсот"
        case 8:
            ret = "вісімсот"
        case 9:
            ret = "дев'ятсот"
        default:
            fatalError("_100_999() out of range")
        }
        if below > 0 {
            if ret.count > 0 { ret += " " }
            ret += fromUInt(below)
        }
        return ret
    }
    
    override func groupName(_ groupIndex: UInt, _ above: UInt) -> String? {
        switch groupIndex {
        case 3:
            if above % 10 == 1 && (above < 10 || above > 20)  {
                return "тисяча"
            } else if (above % 10 >= 1 && above % 10 <= 4) && (above < 10 || above > 20) {
                return "тисячі"
            } else {
                return "тисяч"
            }
        case 6:
            if above % 10 == 1 && (above < 10 || above > 20)  {
                return "мільйон"
            } else if (above % 10 >= 1 && above % 10 <= 4) && (above < 10 || above > 20) {
                return "мільйони"
            } else {
                return "мільйонів"
            }
        case 9:
            if above % 10 == 1 && (above < 10 || above > 20)  {
                return "мільярд"
            } else if (above % 10 >= 1 && above % 10 <= 4) && (above < 10 || above > 20) {
                return "мільярди"
            } else {
                return "мільярдів"
            }
        case 12:
            if above % 10 == 1 && (above < 10 || above > 20)  {
                return "трильйон"
            } else if (above % 10 >= 1 && above % 10 <= 4) && (above < 10 || above > 20) {
                return "трильйони"
            } else {
                return "трильйонів"
            }
        default: return nil
        }
    }
    
    override func group(_ groupIndex: UInt, _ above: UInt, below: UInt) -> String {
        if groupIndex == 3 {
            use_single_group = false
        } else {
            use_single_group = true
        }
        var ret = super.group(groupIndex, above, below: below)
        ret = ret.replacingOccurrences(of: "два тисячі", with: "дві тисячі")
        if groupIndex == 3 {
            ret = ret.replacingOccurrences(of: "один ", with: "одна ")
        }
        return ret
    }
}
    
