//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Mohit Arora on 2024-04-14.
//

import SwiftUI
import SwiftUICharts

struct ContentView: View {
    
    @EnvironmentObject var transactionListVM: TransactionListViewModel
    
    var demoData : [Double] = [8, 4, 5, 7, 8, 9 , 11, 3, 6]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    Text("Overview")
                        .font(.title2)
                        .bold()
                    let data = transactionListVM.accumulateTransactions()
                    if !data.isEmpty {
                        let totalExpense = data.last?.1 ?? 0
                        CardView {
                            VStack(alignment: .leading) {
                                ChartLabel(totalExpense.formatted(.currency(code: "USD")), type: .title, format: "US$%.2f")
                                LineChart()
                            }
                            .background(Color.systemBackground)
                        }
                        .data(data)
                        .chartStyle(
                            ChartStyle(backgroundColor: Color.systemBackground, foregroundColor: ColorGradient(Color.etIcon.opacity(0.4), Color.etIcon))
                        )
                        .frame(height: 300)
                    }
                    
                    
                    
                    RecentTransactionList()
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            .background(Color.etBackground)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Image(systemName: "bell.badge")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.etIcon, .primary)
                }
            }
        }
        .navigationViewStyle(.stack)
        .tint(.primary)
    }
}

#Preview {
    ContentView()
        .environmentObject(Utils.shared.transactionListVM)
}
