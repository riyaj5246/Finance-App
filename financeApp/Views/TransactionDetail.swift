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
        ScrollView{
            if transaction.amount > 0 {
                Text("""
                Amount:
                $\(transaction.amount)
                """)
                    .font(.system(size: 60))
                    .foregroundColor(Color.white)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 400, height: 300)
                    .background(Circle()
                                    .fill(Color("Color3"))
                                    .shadow(color: Color("Color3"), radius: 10, x: 5, y: 5))
                Text("Transaction type: Deposit")
                    .font(.system(size: 30))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 400, height: 60)
                    .background(Rectangle()
                                    .fill(Color("Color3"))
                                    .shadow(color: Color("Color3"), radius: 10, x: 5, y: 5))

            }
            else{
            
                Text("""
                     Amount:
                     -$\(transaction.amount.magnitude)
                    """)
                    .font(.system(size: 60))
                    .foregroundColor(Color.white)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 400, height: 300)
                    .background(Circle()
                                    .fill(Color("Accent2"))
                                    .shadow(color: Color("Accent2"), radius: 10, x: 5, y: 5))
                Text("Transaction type: Withdrawal")
                    .font(.system(size: 30))
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 400, height: 60)
                    .background(Rectangle()
                                    .fill(Color("Accent2"))
                                    .shadow(color: Color("Accent2"), radius: 10, x: 5, y: 5))
            }
            Text("Transaction number: \(transaction.id)")
                .font(.system(size: 30))
                .fontWeight(.light)
                .foregroundColor(Color.white)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
                .padding()
                .frame(width: 400, height: 60)
                .background(Rectangle()
                                .fill(Color("AccentColor"))
                                .shadow(color: Color("AccentColor"), radius: 10, x: 5, y: 5))
            Text("""
                    Transaction Category:
                    \(transaction.type)
                    """)
                .font(.system(size: 30))
                .fontWeight(.light)
                .foregroundColor(Color.white)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
                .padding()
                .frame(width: 400, height: 70)
                .background(Rectangle()
                                .fill(Color("AccentColor"))
                                .shadow(color: Color("AccentColor"), radius: 10, x: 5, y: 5))
            Text(transaction.details)
                .font(.system(size: 25))
                .fontWeight(.regular)
                .foregroundColor(Color.white)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
                .padding()
                .frame(width: 400, height: 150)
                .background(Rectangle()
                                .fill(Color("AccentColor"))
                                .shadow(color: Color("AccentColor"), radius: 10, x: 5, y: 5))

        }
    }
}

struct TransactionDetail_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetail(transaction: transactions[0])
    }
}
