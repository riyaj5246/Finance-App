//
//  ContentView.swift
//  financeApp
//
//  Created by Riya Jain on 12/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("BudgetBetter")
                .font(.system(size: 55))
                .fontWeight(.heavy)
                .foregroundColor(Color("AccentColor"))
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            Text("Tracking and Managing Your Finances ")
                .font(.system(size: 20))
                .fontWeight(.light)
                .foregroundColor(Color("AccentColor"))
                .multilineTextAlignment(.leading)
            TabView(selection: .constant(1)) {
                homeView().tabItem {
                    Text("Home")
                        .font(.title)
                        .fontWeight(.heavy)
                       // .foregroundColor(Color("AccentColor"))
                    
                }.tag(1)
                transactionsView().tabItem {
                    Text("Transactions")
                        .font(.title)
                        .fontWeight(.bold)
                       // .foregroundColor(Color("AccentColor"))
                    
                }.tag(2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
