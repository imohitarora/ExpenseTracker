//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Mohit Arora on 2024-04-14.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
