//
//  homeView.swift
//  financeApp
//
//  Created by Riya Jain on 12/9/21.
//

import SwiftUI

struct homeView: View {
    @State var balance = "$1000.00"
    @State var amountSpent = "$500.00"
    @State var amountEarned = "$500.00"
    @State var categoriesArray = ["Food", "Clothes", "Entertainment", "Savings", "Debt Payment", "Other"]
    
    var body: some View {
        ScrollView{
            Text("Current Balance: ")
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
                .padding()
                .frame(width: 375, height: 75)
                .background(Rectangle()
                                .fill(Color("AccentColor"))
                                .shadow(color: Color("AccentColor"), radius: 10, x: 5, y: 5))
            Text(balance)
                .font(.system(size: 70))
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
                .padding()
                .frame(width: 375, height: 175)
                .background(Rectangle()
                                .fill(Color("AccentColor"))
                                .shadow(color: Color("AccentColor"), radius: 10, x: 5, y: 5))
            HStack {
                Text("Spendings:")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 185, height: 75)
                    .background(Rectangle()
                                    .fill(Color("Accent2"))
                                .shadow(color: Color("Accent2"), radius: 10, x: 5, y: 5))
                Text("Earnings: ")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 185, height: 75)
                    .background(Rectangle()
                                    .fill(Color("Accent2"))
                                .shadow(color: Color("Accent2"), radius: 10, x: 5, y: 5))
            }
            HStack {
                Text(amountSpent)
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 185, height: 60)
                    .background(Rectangle()
                                    .fill(Color("Accent2"))
                                .shadow(color: Color("Accent2"), radius: 10, x: 5, y: 5))
                Text(amountEarned)
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 185, height: 60)
                    .background(Rectangle()
                                    .fill(Color("Accent2"))
                                .shadow(color: Color("Accent2"), radius: 10, x: 5, y: 5))
            }
    
            Text("Breakdown by Category: ")
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
                .padding()
                .frame(width: 375, height: 75)
                .background(Rectangle()
                                .fill(Color("Color3"))
                            .shadow(color: Color("Color3"), radius: 10, x: 5, y: 5))
            
//            NavigationView {
//                List($categoriesArray) { category in
//                    NavigationLink {
//                        homePageCategoryView()
//                    } label: {
//                        category
//                    }
//                }
//            }
            homePageCategoryView()
            homePageCategoryView()
            homePageCategoryView()
            homePageCategoryView()
        }
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
