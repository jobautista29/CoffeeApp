//
//  DrinkDetails.swift
//  CoffeeApp
//
//  Created by Jovan on 3/1/20.
//  Copyright © 2020 Jovan. All rights reserved.
//

import SwiftUI

struct DrinkDetails: View {
    
    var drink: Drink
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0){
            Image(drink.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width:300, height:170)
                .cornerRadius(10)
            .shadow(radius: 10)
            VStack(alignment: .leading, spacing:5){
                Text(drink.name)
                    .font(.headline)
                    .foregroundColor(Color.black)
                Text(drink.description)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height: 40)
            }
        }
    }
}

struct DrinkDetails_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetails(drink: drinkData[0])
    }
}
