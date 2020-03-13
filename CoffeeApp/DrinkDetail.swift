//
//  DrinkDetail.swift
//  CoffeeApp
//
//  Created by Jovan on 3/1/20.
//  Copyright © 2020 Jovan. All rights reserved.
//

import SwiftUI

struct DrinkDetail: View {
    
    var drink: Drink
    var body: some View {
        List{
            ZStack(alignment: .bottom){
                Image(drink.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height:80)
                    .opacity(0.25)
                    .blur(radius: 10)
                HStack{
                    VStack(alignment: .leading, spacing: 8){
                        Text(drink.name)
                            .foregroundColor(Color.white)
                            .font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                    
                }
            }
            .listRowInsets(EdgeInsets())
            VStack {
                Text(drink.description)
                    .font(.body)
                    .lineLimit(nil)
                    .lineSpacing(12)
                
                HStack {
                    Spacer()
                    OrderButton()
                    Spacer()
                }.padding(.top, 50)
            }.padding(.top)
                .padding(.bottom)
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct OrderButton: View {
    var body: some View{
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            Text("Order Now")
                .frame(width:200, height: 50)
                .background(Color.blue)
                .foregroundColor(Color.white)
            .cornerRadius(20)
            
            
        }
    }
}

struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[3])
    }
}
