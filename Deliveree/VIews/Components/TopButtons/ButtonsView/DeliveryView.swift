//
//  DelivereeButtonView.swift
//  Deliveree
//
//  Created by Daniil Akmatov on 3/3/23.
//

import SwiftUI

struct DeliveryView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    HStack {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.black)
                        }
                        Spacer()
                        Text("Delivery")
                            .frame(width: UIScreen.main.bounds.height * (1/4))
                        Spacer()
                    }
                    .padding()
                }
                .frame(maxWidth: .infinity)
            }
            
            Spacer()
        }
    }
}

struct DeliveryButtonView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryView()
    }
}
