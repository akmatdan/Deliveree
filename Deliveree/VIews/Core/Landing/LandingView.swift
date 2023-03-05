//
//  LandingView.swift
//  Deliveree
//
//  Created by Daniil Akmatov on 3/3/23.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 38, alignment: .center)
                        .padding(.top, 10)
                    
                    Text("DELIVEREE")
                        .font(.custom(FontsManager.Poppins.black, size: 35))
                        .foregroundColor(.white)
                }
                
                Text("Your favourite local restaurants")
                    .font(.custom(FontsManager.Poppins.light, size: 15))
                    .frame(alignment: .center)
                    .foregroundColor(.white)
                HStack {
                    Text("delivered")
                        .font(.custom(FontsManager.Poppins.bold, size: 15))
                        .frame(alignment: .center)
                        .foregroundColor(.white)
                    
                    Text("to your doorstep.")
                        .font(.custom(FontsManager.Poppins.light, size: 15))
                        .frame(alignment: .center)
                        .foregroundColor(.white)
                }
            }
            .padding(.bottom, 70)
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
.previewInterfaceOrientation(.portrait)
    }
}
