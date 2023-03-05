//
//  NavigationBar.swift
//  Deliveree
//
//  Created by Daniil Akmatov on 5/3/23.
//

import SwiftUI

struct NavigationBarView: View {
    
    @State var currentTab: Tab = .Home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack {
            TabView(selection: $currentTab) {
                
                MainView()
                    .tag(Tab.Home)
                
                WalletView()
                    .tag(Tab.Wallet)
                
                ChatView()
                    .tag(Tab.Chat)
                
                ContactView()
                    .tag(Tab.Contact)
                
            }

            HStack {
                ForEach(Tab.allCases, id: \.self) { tab in
                    Button {
                        currentTab = tab
                    } label: {
                        Image(systemName: tab.rawValue)
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
        
                            .foregroundColor(currentTab == tab ? Color(red: 0.2, green: 0.0, blue: 0.7) : Color.white.opacity(0.3))
                    }
                }
            }
            .padding([.horizontal, .top])
            .background(.black)
            .padding(10)
        }
    }
}

// Tab cases, Iterable
enum Tab: String, CaseIterable {
    
    // Raw Value Image name in asset
    case Home = "home"

    case Wallet = "wallet"

    case Chat = "chat"

    case Contact = "contact"
}


struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
