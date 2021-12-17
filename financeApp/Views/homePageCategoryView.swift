//
//  homePageCategoryView.swift
//  financeApp
//
//  Created by Riya Jain on 12/12/21.
//

import SwiftUI

struct homePageCategoryView: View {

    var category: TransactionType
    var index: Int
    @State var categoryAmts: [Int] = updateCategoriesBalance()

    var body: some View {
        HStack{
            Text(category.name)
                .font(.system(size: 25))
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
                .padding()
                .frame(width: 190, height: 75)
                .background(Rectangle()
                                .fill(Color("AccentColor")))
                           // .shadow(color: Color("AccentColor"), radius: 10, x: 5, y: 5))
            
               
            Text("""
                    Net Total:
                    $\(categoryAmts[index])
                    """)
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
                .padding()
                .frame(width: 190, height: 75)
                .background(Rectangle()
                                .fill(Color("Color3")))
                .onAppear {
                    categoryAmts = updateCategoriesBalance()
                }

        }
        .onAppear{
            categoryAmts = updateCategoriesBalance()
        }
    }
       
}

struct homePageCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        homePageCategoryView(category: categories[1], index: 1)
    }
}
