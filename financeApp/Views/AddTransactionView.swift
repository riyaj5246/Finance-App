//
//  AddTransactionView.swift
//  financeApp
//
//  Created by Riya Jain on 12/14/21.
//

import SwiftUI

struct AddTransactionView: View {
    enum transferDirection: String, CaseIterable, Identifiable {
        case deposit
        case withdrawal

        var id: String { self.rawValue }
    }
    
    enum TransactionType: String, CaseIterable, Identifiable {
        case bills
        case food
        case clothing
        case debt
        case saving
        case salary
        case other

        var id: String { self.rawValue }
    }
    
    @State var title: String = ""
    @State var amount: String = ""
    @State var details: String = ""

    @State var transferDir: transferDirection = .deposit

    @State var transactionType: TransactionType = .bills
    @State private var birthdate = Date()
    
    @State private var isGoingToTransactionView = false

    
    var body: some View {
        NavigationView {
            Form(content: {
                // Text field
                TextField("Transaction Title", text: $title)
                TextField("Transaction Amount", text: $amount)
              
                Picker("Gender", selection: $transferDir) {
                                    ForEach(transferDirection.allCases) { dir in
                                        Text(dir.rawValue.capitalized).tag(dir)
                                    }
                                }
                .pickerStyle(SegmentedPickerStyle())


                // Scroll picker
                Picker("Transaction Type", selection: $transactionType) {
                    ForEach(TransactionType.allCases) { ttype in
                        Text(ttype.rawValue.capitalized).tag(ttype)
                    }
                }
                TextField("Transaction Details", text: $details)

                // Button
                Button("Save & Add Transaction") {
                    // DO SOMETHING
                    var amountInt = Int(amount) ?? 0
                    
                    if transferDir.rawValue == "withdrawal" {
                        amountInt = -1 * amountInt
                    }
                    
                    if amountInt != 0 {
                        transactions.append(
                            Transaction(id: transactions.count, description: title, type: transactionType.rawValue, amount: amountInt, details: details)
                        )
                        
                        isGoingToTransactionView = true
                    }

                }
            })
            .navigationBarTitle("Add a Transaction")
         //   .navigationBarBackButtonHidden(true)
            //.navigationBarHidden(true)
        }
        
        NavigationLink(destination: transactionsView(), isActive: $isGoingToTransactionView) { Text("")
                .navigationBarTitle("")
                .navigationBarHidden(true)
        }
    }
}

struct AddTransactionView_Previews: PreviewProvider {
    static var previews: some View {
        AddTransactionView()
    }
}
