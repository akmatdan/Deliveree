//
//  TopButtons.swift
//  Deliveree
//
//  Created by Daniil Akmatov on 3/3/23.
//

import SwiftUI

struct TopButtons: View {
    
    var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 14) {
                    
                    Button {
                        
                    } label: {
                        HStack(spacing: -2) {
                            Image("buttonLogo")
                                .font(.system(size: 20))
                                .offset(y: 5)
                            
                            Text("Delivery")
                                .font(.custom(FontsManager.Poppins.medium, size: 10))
                                .foregroundColor(.white)
                        }
                        .frame(width: 85, height: 45, alignment: .center)
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                        .padding(5)
                        .background(Color.black)
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                    }

                    ReuseButton(action: TakeawayView(), imageName: "takeaway")
                    
                    ReuseButton(action: CateringView(), imageName: "catering")
                    
                    ReuseButton(action: CurbsideView(), imageName: "curbside")
                    
                    ReuseButton(action: OffersView(), imageName: "offers")
                }
                .padding()
            }
    }
}

struct TopButtons_Previews: PreviewProvider {
    static var previews: some View {
        TopButtons()
    }
}

