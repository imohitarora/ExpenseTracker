//
//  Utils.swift
//  ExpenseTracker
//
//  Created by Mohit Arora on 2024-04-15.
//

import Foundation

class Utils {
    static let shared = Utils()
    
    var transactionListVM: TransactionListViewModel
    
    init() {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        self.transactionListVM = transactionListVM
    }
}
