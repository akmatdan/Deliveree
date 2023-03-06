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
    @EnvironmentObject var vm: LocationViewModel
    @State private var isPopoverShown = false
    @State private var isToggleOn = false
    
    var body: some View {
        HStack {
            Button(action: {
                // Handle menu button tap
            }, label: {
                Image("menu")
                    .frame(width: 25, height: 11)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                    .padding(.horizontal, 5)
            })
                
            Spacer()
            Spacer()
            
            VStack {
                Text("Delivering to")
                    .font(.custom(FontsManager.Poppins.light, size: 12))
                    .foregroundColor(.gray)
                    .frame(width: 100, alignment: .leading)
                
                VStack {
                    Button {
                        self.isPopoverShown.toggle()
                    } label: {
                        HStack {
                            VStack {
                                Text("Address")
                                    .font(.custom(FontsManager.Poppins.semiBold, size: 16))
                                    .foregroundColor(.black)
                                
                            }
                            Image(systemName: "chevron.down")
                                .foregroundColor(.primary)
                        }
                        .popover(isPresented: $isPopoverShown, content: {
                          
                            DeliveryLocationView()
                        })
                    }
                }
                    
            }
            .frame(width: 160)
        
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
        .navigationBarHidden(true)
    }
}

//struct DropdownButton: View {
//
////    @Binding var selectedIndex: Int
////    let options: [String]
//
//
//    var body: some View {
//
//
//    }
//}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavView()
    }
}
