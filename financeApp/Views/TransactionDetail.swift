//
//  TransactionDetail.swift
//  financeApp
//
//  Created by Riya Jain on 12/13/21.
//

import SwiftUI

struct TransactionDetail: View {
    var transaction: Transaction
    var body: some View {
        VStack{
            Text("Transaction number: \(transaction.id)")
                .font(.system(size: 25))

            if transaction.amount > 0 {
                Text("Deposit")
                    .font(.system(size: 40))
                Text("Amount: $\(transaction.amount)")
                    .font(.system(size: 40))

            }
            else{
                Text("Withdrawal")
                    .font(.system(size: 40))
                Text("Amount: -$\(transaction.amount.magnitude)")
                    .font(.system(size: 40))

            }
            Text("Transaction Category: \(transaction.type)")
                .font(.system(size: 30))
            Text(transaction.description)
                .font(.system(size: 30))

        }
    }
}

struct TransactionDetail_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetail(transaction: transactions[1])
    }
}
