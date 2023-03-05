//
//  ListView.swift
//  Deliveree
//
//  Created by Daniil Akmatov on 5/3/23.
//

import SwiftUI

struct ListView: View {
    
    let dishesList = [
        DishModel(name: "Paul", category: "French Pasta", delivery: "FREE", minimum: "$10", rating: "4.5", time: 0, image: "meal2"),
        DishModel(name: "Tony Roma’s", category: "Ribs & Steaks", delivery: "FREE", minimum: "$20", rating: "4.5", time: 35, image: "meal1"),
        DishModel(name: "Momos", category: "Japanese", delivery: "FREE", minimum: "$10", rating: "4.5", time: 30, image: "meal2"),
        ]
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 30) {
                ForEach(dishesList) { dish in
                    Button {
                        
                    } label: {
                        VStack(spacing: 0) {
                            Spacer()
                            Text(dish.name)
                                .font(.custom(FontsManager.Poppins.bold, size: 16))
                                .foregroundColor(.black)
                                .frame(width: 250, alignment: .leading)
                                .multilineTextAlignment(.leading)
                                .lineLimit(nil)
                                .truncationMode(.tail)
                            
                            VStack(spacing: 0) {
                                Text("\(dish.category)")
                                    .font(.custom(FontsManager.Poppins.light, size: 12))
                                    .foregroundColor(.gray)
                                    .frame(width: 250, alignment: .leading)
                                    .multilineTextAlignment(.leading)
                                
                                HStack(spacing: 2) {
                                    
                                    Text("Delivery: \(dish.delivery)")
                                        .font(.custom(FontsManager.Poppins.light, size: 12))
                                        .foregroundColor(.gray)
                                    
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .foregroundColor(.gray)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 2, height: 2, alignment: .center)
                                        
                                    Text("Minimum: \(dish.minimum)")
                                        .font(.custom(FontsManager.Poppins.light, size: 12))
                                        .foregroundColor(.gray)
                                }
                                .frame(width: 250, alignment: .leading)
                            }
                            
                            Spacer()
                            
                            HStack(spacing: 4) {
                                Image("star")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(.gray)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 10, height: 10, alignment: .center)
                                
                                Text("\(dish.rating)")
                                    .font(.custom(FontsManager.Poppins.bold, size: 12))
                                    .foregroundColor(.black)
                                
                                Image(systemName: "circle.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(.gray)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 2, height: 2, alignment: .center)
                                
                                Image("clock")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(.gray)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 9, height: 9, alignment: .center)
                                
                                Text("\(dish.time) Mins")
                                    .font(.custom(FontsManager.Poppins.bold, size: 12))
                                    .foregroundColor(.black)
                            }
                            .padding(.vertical, 5)
                        }
                        .frame(width: 285, height: 130)
                        .background(Color.white)
                        .cornerRadius(30)
                        .offset(x: -30)
                        .overlay(
                            Image(dish.image)
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 120, height: 120, alignment: .center)
                                .offset(x: 100)
                        )
                    }
                    .frame(width: 395, height: 130)
                }
            }
            
        }
        .frame(width: 395, height: 130)
        .background(Color.theme.background)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
