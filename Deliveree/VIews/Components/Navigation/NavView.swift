//
//  NavigationView.swift
//  Deliveree
//
//  Created by Daniil Akmatov on 3/3/23.
//

import SwiftUI

struct NavView: View {
    
    @State var productCount = 0
    let addresses = ["Address 1", "Address 2", "Address 3"]
    @State var selectedAddressIndex = 0
    
    var body: some View {
        HStack {
                Button(action: {
                    // Handle menu button tap
                }, label: {
                    Image("menu")
                        .frame(width: 25, height: 11)
                        .shadow(color: .gray, radius: 2, x: 0, y: 2)
                })
                Spacer()
                Spacer()
                VStack {
                    Text("Delivering to")
                        .font(.custom(FontsManager.Poppins.light, size: 12))
                        .foregroundColor(.gray)
                    
                    DropdownButton(selectedIndex: $selectedAddressIndex, options: addresses)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    // Handle basket button tap
                }, label: {
                    ZStack {
                        VStack {
                            if productCount > 0 {
                                Text("\(productCount)")
                                    .foregroundColor(.white)
                                    .font(.system(size: 12))
                                    .padding(5)
                                    .background(Color.black)
                                    .clipShape(Circle())
                                    .offset(x: 10, y: -10)
                            }
                            Image("trolley")
                                .font(.system(size: 24))
                        }
                    }
                    .padding()
                    .background(.black)
                    .cornerRadius(15)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                })
            }
            .padding(.horizontal, 15)
            .padding(.vertical, 5)
        .navigationBarHidden(true)
    }
}

struct DropdownButton: View {
    
    @Binding var selectedIndex: Int
    let options: [String]
    
    var body: some View {
        Menu {
            ForEach(0..<options.count) { index in
                Button(action: {
                    selectedIndex = index
                }, label: {
                    Text(options[index])
                })
            }
        } label: {
            HStack {
                Text(options[selectedIndex])
                    .font(.custom(FontsManager.Poppins.semiBold, size: 16))
                    .foregroundColor(.black)

                Image(systemName: "chevron.down")
                    .foregroundColor(.primary)
            }
            
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavView()
    }
}
