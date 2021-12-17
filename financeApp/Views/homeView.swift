//
//  homeView.swift
//  financeApp
//
//  Created by Riya Jain on 12/9/21.
//

import SwiftUI

struct homeView: View {
    @State var categoriesArray = ["Bills & Util", "Food", "Clothing", "Debt/Mortgage", "Savings", "Salary", "Other"]
    @State var randString: String = updateTotalBalance()
    
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
            Text(randString)
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
                .onAppear {
                    randString = updateTotalBalance()
                }
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
                Text("-$\(amtSpent.magnitude)")
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
                Text("$\(amtReceived)")
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
    
            CategoryView()
                .onAppear{
                    let x = updateCategoriesBalance()
                    print(x)
                }
        }
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
