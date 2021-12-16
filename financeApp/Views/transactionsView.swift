//
//  transactionsView.swift
//  financeApp
//
//  Created by Riya Jain on 12/9/21.
//

import SwiftUI

struct transactionsView: View {
    
    @State private var isGoingToAddTransactionView = false

    var body: some View {
        NavigationView {
            VStack {
                NavigationView {
                    List(transactions) { transaction in
                        NavigationLink {
                            TransactionDetail(transaction: transaction)
                        } label: {
                            TransactionRow(transaction: transaction)
                                .frame(width: 300, height: 80)

                        }
                    }
                }
                .frame(height: 550)

                
                NavigationLink(destination: AddTransactionView(), isActive: $isGoingToAddTransactionView) { Text("")
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                }

                Button(action: {isGoingToAddTransactionView = true}) {
                    Text("Add New Transaction")
                        .font(.system(size: 30))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .fixedSize(horizontal: false, vertical: true)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(width: 375, height: 80)
                        .background(LinearGradient(gradient: Gradient(colors: [Color("Color3"), Color("Accent2")]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(40)
                        .shadow(color: Color("AccentColor"), radius: 10, x: 5, y: 5)
                }
            }

        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("")
        .navigationBarHidden(true)
   
     
    }
}

struct transactionsView_Previews: PreviewProvider {
    static var previews: some View {
        transactionsView()
    }
}
