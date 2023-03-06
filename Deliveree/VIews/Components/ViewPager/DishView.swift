//
//  DishView.swift
//  Deliveree
//
//  Created by Daniil Akmatov on 5/3/23.
//

import SwiftUI

struct DishView: View {
    
    let dishesList = [
        DishModel(name: "Tony Roma’s", category: "Ribs & Steaks", delivery: "FREE", minimum: "$20", rating: "4.5", time: 35, image: "meal1"),
        DishModel(name: "Momos", category: "Japanese", delivery: "FREE", minimum: "$10", rating: "4.5", time: 30, image: "meal2"),
        ]
    
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack(spacing: -5) {
                ForEach(dishesList) { dish in
                    Button {
                        
                    } label: {
                        VStack {
                            Spacer()
                            Text(dish.name)
                                .font(.custom(FontsManager.Poppins.bold, size: 16))
                                .foregroundColor(.black)
                                .frame(width: 128, alignment: .leading)
                                .multilineTextAlignment(.leading)
                                .lineLimit(nil)
                                .truncationMode(.tail)
                            
                            VStack(spacing: 0) {
                                Text("\(dish.category)")
                                    .font(.custom(FontsManager.Poppins.light, size: 10))
                                    .foregroundColor(.gray)
                                    .frame(width: 128, alignment: .leading)
                                    .multilineTextAlignment(.leading)
                                
                                HStack(spacing: 2) {
                                    
                                    Text("Delivery: \(dish.delivery)")
                                        .font(.custom(FontsManager.Poppins.light, size: 9))
                                        .foregroundColor(.gray)
                                    
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .foregroundColor(.gray)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 2, height: 2, alignment: .center)
                                        
                                    Text("Minimum: \(dish.minimum)")
                                        .font(.custom(FontsManager.Poppins.light, size: 9))
                                        .foregroundColor(.gray)
                                }
                                .frame(width: 128, alignment: .leading)
                            }

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
                        .frame(width: 160, height: 180)
                        .background(Color.white)
                        .cornerRadius(30)
                        .overlay(
                            Image(dish.image)
                                .resizable()
                                .scaledToFit()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 180, alignment: .center)
                                .offset(y: -70)
                        )
                    }
                    .padding(.top, 60)
                }
                .padding()
            }
        }
        .background(Color.theme.background)
        
    }
}

struct DishModel: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var category: String
    var delivery: String
    var minimum: String
    let rating: String
    var time: Int
    var image: String
}

struct DishView_Previews: PreviewProvider {
    
    static var previews: some View {
        DishView()
    }
}
