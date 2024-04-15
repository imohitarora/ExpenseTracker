//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by Mohit Arora on 2024-04-14.
//

import Foundation

var transactionPreviewData = Transaction(id: 1, date: "01/24/2024", institution: "Desjerdins", account: "Visa Desjers", merchant: "Apple", amount: 11.49, type: "debit", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
