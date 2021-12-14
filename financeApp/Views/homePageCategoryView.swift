//
//  homePageCategoryView.swift
//  financeApp
//
//  Created by Riya Jain on 12/12/21.
//

import SwiftUI

struct homePageCategoryView: View {
    @State var usedAmt = "$50"
    @State var leftAmt = "$20"

    var body: some View {
        HStack{
            Text("Storage Type")
                .font(.system(size: 25))
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .fixedSize(horizontal: false, vertical: true)
                .multilineTextAlignment(.center)
                .padding()
                .frame(width: 200, height: 100)
                .background(Rectangle()
                                .fill(Color("AccentColor")))
                           // .shadow(color: Color("AccentColor"), radius: 10, x: 5, y: 5))
            
            VStack {
                Text("Used: \(usedAmt)")
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 170, height: 45)
                    .background(Rectangle()
                                    .fill(Color("Color3")))
                               // .shadow(color: Color("Color3"), radius: 10, x: 5, y: 5))
                Text("Left:  \(leftAmt)")
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 170, height: 45)
                    .background(Rectangle()
                                    .fill(Color("Color3")))
                              //  .shadow(color: Color("Color3"), radius: 10, x: 5, y: 5))
            }
        }
    }
}

struct homePageCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        homePageCategoryView()
    }
}
