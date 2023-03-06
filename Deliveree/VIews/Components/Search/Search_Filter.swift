//
//  Search&Filter.swift
//  Deliveree
//
//  Created by Daniil Akmatov on 5/3/23.
//

import SwiftUI

struct Search_Filter: View {
    var body: some View {
        VStack {
            Text("56 stores open")
                .font(.custom(FontsManager.Poppins.medium, size: 16))
                .frame(maxWidth: .infinity, alignment: .leading)
                .multilineTextAlignment(.leading)
                .padding(.horizontal,15)
            HStack {
                Spacer()
                Spacer()
                Button {
                    
                } label: {
                    HStack {
                        Image("search")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20, alignment: .center)
                        
                        Text("Find restaurant by name ")
                            .font(.custom(FontsManager.Poppins.light, size: 12))
                            .foregroundColor(.gray)
                            .frame(alignment: .leading)
                        
                        Spacer()
                    }
                    .padding()
                    .frame(width: 277)
                    .background(.white)
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                }
                    
                Spacer()
                    
                Button {
                    
                } label: {
                    Image("filter")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24, height: 24, alignment: .center)
                        .padding(.horizontal, 30)
                }
            }
            .padding(.horizontal, 15)

        }
        .padding(.horizontal, 5)
    }
}

struct Search_Filter_Previews: PreviewProvider {
    static var previews: some View {
        Search_Filter()
    }
}
