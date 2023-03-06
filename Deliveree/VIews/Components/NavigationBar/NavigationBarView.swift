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

            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(.black)
                    .frame(height: 75)
                    .padding(.horizontal, 20)
                
                HStack(spacing: 30) {
                    ForEach(Tab.allCases, id: \.self) { tab in
                        Button(action: {
                            currentTab = tab
                        }) {
                            ZStack {
                                Circle()
                                    .foregroundColor(currentTab == tab ? Color.theme.circle : Color.clear)
                                    .frame(width: 50, height: 50)
                                
                                Image(String(tab.rawValue))
                                    .resizable()
                                   .renderingMode(.template)
                                   .aspectRatio(contentMode: .fit)
                                   .frame(width: 20, height: 20)
                                    .font(.system(size: 20, weight: .medium))
                                    .foregroundColor(currentTab == tab ? .white : .white)
                            }
                        }
                    }
                }
                .frame(height: 75)
            }
        }
        .background(Color.theme.background)
    }
}

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
