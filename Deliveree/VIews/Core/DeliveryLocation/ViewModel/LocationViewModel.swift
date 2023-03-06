////
////  LocationViewModel.swift
////  Deliveree
////
////  Created by Daniil Akmatov on 6/3/23.
////

import Foundation
import SwiftUI

class LocationViewModel: ObservableObject {

    @Published var showLocationList: Bool = false
    
    func toggleLocation() {
        withAnimation(.easeInOut) {
            showLocationList = !showLocationList
        }
    }
    
//    let FirstLocationsList = [
//        LocationModel(image: "currentLocation", category: "Deliver to current location", address: "Manas ave "),
//        LocationModel(image: "differentLocation", category: "Deliver to different location", address: "Choose location on the map "),
//        ]
//
//    let SavedLocationsList = [
//        LocationModel(image: "homeLocation", category: "Home", address: "Jukeev-Pudovkin St 43, apt #12"),
//        LocationModel(image: "workLocation", category: "Work", address: "Manas Ave 32, floor 7, office #703"),
//        LocationModel(image: "hotelLocation", category: "Hotel", address: "Frunze St 50, floor 10, room #1011 "),
//    ]
//
//    @Published var locationsList: [LocationModel]
//    @Published var savedLocationsList: [LocationModel]
//
//    init() {
//        self.locationsList = FirstLocationsList
//        self.savedLocationsList = SavedLocationsList
//    }
//


}

//struct LocationModel: Identifiable, Hashable {
//    var id = UUID()
//    var image: String
//    var category: String
//    var address: String
//}
