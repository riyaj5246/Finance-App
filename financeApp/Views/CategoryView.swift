//
//  CategoryView.swift
//  financeApp
//
//  Created by Riya Jain on 12/16/21.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        VStack{
            homePageCategoryView(category: categories[0], index: 0)
            homePageCategoryView(category: categories[1], index: 1)
            homePageCategoryView(category: categories[2], index: 2)
            homePageCategoryView(category: categories[3], index: 3)
            homePageCategoryView(category: categories[4], index: 4)
            homePageCategoryView(category: categories[5], index: 5)
            homePageCategoryView(category: categories[6], index: 6)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
