//
//  DeliveryLocationView.swift
//  Deliveree
//
//  Created by Daniil Akmatov on 3/3/23.
//

import SwiftUI

struct DeliveryLocationView: View {
    
    let LocationList = [
        LocationModel(image: "currentLocation", category: "Deliver to current location", address: "Manas ave "),
        LocationModel(image: "differentLocation", category: "Deliver to different location", address: "Choose location on the map "),
        ]

    let SavedLocationList = [
        LocationModel(image: "homeLocation", category: "Home", address: "Jukeev-Pudovkin St 43, apt #12"),
        LocationModel(image: "workLocation", category: "Work", address: "Manas Ave 32, floor 7, office #703"),
        LocationModel(image: "hotelLocation", category: "Hotel", address: "Frunze St 50, floor 10, room #1011 "),
    ]
    
//    @EnvironmentObject var vm: LocationViewModel

    var body: some View {

        VStack{
            Text("Choose delivery location")
                .font(.custom(FontsManager.Poppins.semiBold, size: 18))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 15)
            List {
                ForEach (LocationList) { location in
                    VStack {
                        HStack {
                            Image(location.image)
                            VStack {
                                Text(location.category)
                                    .font(.custom(FontsManager.Poppins.medium, size: 18))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text(location.address)
                                    .font(.custom(FontsManager.Poppins.regular, size: 12))
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(PlainListStyle())
            
            Text("Saved Addresses")
                .font(.custom(FontsManager.Poppins.semiBold, size: 18))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 15)
            List {
                ForEach (SavedLocationList) { location in
                    VStack {
                        HStack {
                            Image(location.image)
                            VStack {
                                Text(location.category)
                                    .font(.custom(FontsManager.Poppins.medium, size: 18))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text(location.address)
                                    .font(.custom(FontsManager.Poppins.regular, size: 12))
                                    .foregroundColor(.gray)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            Spacer()
                            Image("moveLocation")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.gray)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20, alignment: .center)
                        }
                    }
                }
            }
            .listStyle(PlainListStyle())
            
            Spacer()
        }
    }
}

struct LocationModel: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var category: String
    var address: String
}

struct DeliveryLocationView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryLocationView()
    }
}
