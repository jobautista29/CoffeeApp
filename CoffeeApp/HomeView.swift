//
//  ContentView.swift
//  CoffeeApp
//
//  Created by Jovan on 2/29/20.
//  Copyright © 2020 Jovan. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var categories: [String: [Drink]] {
        .init(
            grouping: drinkData,
            by: {$0.category.rawValue}
        )
    }
    var body: some View {
        NavigationView{
            List(categories.keys.sorted(), id: \.self) {key in DrinkRow(categoryName: "\(key) Drink".uppercased(),drinks: self.categories[key]!)
                .frame(height: 320)
                .padding(.top)
                .padding(.bottom)
            }
            .navigationBarTitle(Text("Coffee Selection"))
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
