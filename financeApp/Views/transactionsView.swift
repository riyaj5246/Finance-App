//
//  transactionsView.swift
//  financeApp
//
//  Created by Riya Jain on 12/9/21.
//

import SwiftUI

struct transactionsView: View {
    var body: some View {
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
        }
    }
}

struct transactionsView_Previews: PreviewProvider {
    static var previews: some View {
        transactionsView()
    }
}
