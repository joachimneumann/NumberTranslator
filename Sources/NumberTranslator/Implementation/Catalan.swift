//
//  Catalan.swift
//  NumberTranslator
//
//  Created by Joachim Neumann on 26.08.24.
//

import Foundation

class Catalan: Group3Language  {
    override init() {
        super.init()
        name = "Català"
        code = "ca"
        _20_99_connector = "-"
        before_hundreds = "-"
        negativeString = "menys"
        afterNegative = " "
        dotString = "coma"
        exponentString = " por diez elevat a "
    }
    
    override func _0_9(_ i: UInt) -> String {
        switch i {
        case 0: return "zero"
        case 1: return "u"
        case 2: return "dos"
        case 3: return "tres"
        case 4: return "quatre"
        case 5: return "cinc"
        case 6: return "sis"
        case 7: return "set"
        case 8: return "vuit"
        case 9: return "nou"
        default:
            fatalError("_0_9() parameter \(i)")
        }
    }
    
    override func _10s(_ i: UInt) -> String {
        switch i {
        case 1: return "deu"
        case 2: return "vint"
        case 3: return "trenta"
        case 4: return "quaranta"
        case 5: return "cinquanta"
        case 6: return "seixanta"
        case 7: return "setanta"
        case 8: return "vuitanta"
        case 9: return "noranta"
        default:
            fatalError("_10s() parameter \(i)")
        }
    }
    
    override func _11_19(_ i: UInt) -> String {
        switch i {
        case 11: return "onze"
        case 12: return "dotze"
        case 13: return "tretze"
        case 14: return "catorze"
        case 15: return "quinze"
        case 16: return "setze"
        case 17: return "disset"
        case 18: return "divuit"
        case 19: return "dinou"
        default:
            fatalError("_11_19() parameter \(i)")
        }
    }
    
    override func _20_99(_ i: UInt) -> String {
        return super._20_99(i).replacingOccurrences(of: "vint-", with: "vint-i-")
    }

    override func groupName(_ groupIndex: UInt, _ above: UInt) -> String? {
        switch groupIndex {
        case 2:
            if above == 1 {
                return "cent"
            } else {
                return "cents"
            }
        case 3:
            return "mil"
        case 6:
            if above == 1 {
                return "un milió"
            } else {
                return "milions"
            }
        case 9:
            return "mil milions"
        case 12:
            if above == 1 {
                return "un bilió"
            } else {
                return "bilions"
            }
        default: return nil
        }
    }
}
    
