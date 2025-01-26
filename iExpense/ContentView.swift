//
//  ContentView.swift
//  iExpense
//
//  Created by Thierno Diallo on 1/21/25.
//

import SwiftUI

struct ExpenseItems {
    let name: String
    let type: String
    let amount: Double
}

@Observable
class Expenses {
    var item = [ExpenseItems]()
}


struct ContentView: View {
    
    @State private var expenses = Expenses()
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(expenses.item, id: \.name) { item in
                    Text(item.name)
                }
            }
            .navigationTitle("iExpense")
            
        }
    }
}

#Preview {
    ContentView()
}
