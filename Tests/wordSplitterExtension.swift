//
//  wordSplitterExtension.swift
//  NumberTranslator
//
//  Created by Joachim Neumann on 30.08.24.
//

import Foundation

extension String {
    public var x: String {
        self.replacingOccurrences(of: "\u{200A}", with: "")
    }
}
