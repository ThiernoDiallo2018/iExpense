//
//  ContentView.swift
//  iExpense
//
//  Created by Thierno Diallo on 1/21/25.
//

import SwiftUI

struct SecondView: View {
    //let name: String // pass this in to make it more dynamic
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Text("Thierno")
            //Text("\(name)")
            Button("Dismiss") {
                dismiss()
            }
        }
        
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    var body: some View {
        VStack {
            Button("Show Sheet") {
                showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet) {
                SecondView()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
