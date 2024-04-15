//
//  Extentions.swift
//  ExpenseTracker
//
//  Created by Mohit Arora on 2024-04-14.
//

import Foundation
import SwiftUI

extension Color {
    static let etBackground = Color("Background")
    static let etIcon = Color("Icon")
    static let etText = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
    
}

extension DateFormatter {
    static let allNumericUSA: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter
    }()
}

extension String {
    func dateParsed() -> Date {
        guard let parsedDate = DateFormatter.allNumericUSA.date(from: self) else { return Date() }        
        return parsedDate
    }
}
