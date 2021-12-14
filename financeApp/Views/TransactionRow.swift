//
//  TransactionRow.swift
//  financeApp
//
//  Created by Riya Jain on 12/13/21.
//

import SwiftUI

struct TransactionRow: View {
    
    var transaction: Transaction
    
    var body: some View {
        HStack {
    
            if transaction.amount > 0 {
                Text("$\(transaction.amount)")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Color3"))
                
                Text(transaction.description)
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(Color("Color3"))
            }
            
            else{
                Text("-$\(transaction.amount.magnitude)")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Accent2"))
                
                Text(transaction.description)
                    .font(.system(size: 25))
                    .fontWeight(.light)
                    .foregroundColor(Color("Accent2"))
            }
                

            Spacer()
        }
    }
}

struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TransactionRow(transaction: transactions[0])
            TransactionRow(transaction: transactions[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
