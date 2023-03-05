//
//  ReuseButton.swift
//  Deliveree
//
//  Created by Daniil Akmatov on 4/3/23.
//

import SwiftUI

struct ReuseButton<Content: View>: View {
    
    var action: Content
    var imageName: String
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        Button {
            
        } label: {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20, alignment: .center)
                .padding()
                .background(.white)
                .cornerRadius(15)
                .shadow(color: .gray, radius: 2, x: 0, y: 2)
        }
    }
}

struct ReuseButton_Previews: PreviewProvider {
    static var previews: some View {
        ReuseButton(action: MainView(), imageName: "catering")
    }
}
