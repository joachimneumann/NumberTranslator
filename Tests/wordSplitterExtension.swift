//
//  wordSplitterExtension.swift
//  NumberTranslator
//
//  Created by Joachim Neumann on 30.08.24.
//

import Foundation

extension String {
    public var x: String {
        var ret: String = self
        ret = ret.replacingOccurrences(of: "Error: ", with: "")
        ret = ret.replacingOccurrences(of: "\u{200A}", with: "")
        return ret
    }
}
