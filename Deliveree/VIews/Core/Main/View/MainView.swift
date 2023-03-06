//
//  ListingView.swift
//  Deliveree
//
//  Created by Daniil Akmatov on 3/3/23.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        VStack {
            NavView()
            
            TopButtons()
            
            Search_Filter()
            
            DishView()
            
            ListView()
            
            Spacer()
        }
        .padding(.vertical, 5)
        .background(Color.theme.background)
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
