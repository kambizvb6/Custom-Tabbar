//
//  Main.swift
//  Custom-Tabbar
//
//  Created by Kambiz on 2024-01-31.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab: TabBarOptionModel = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        ZStack{
            VStack{
                TabView(selection: $selectedTab){
                    ForEach(TabBarOptionModel.allCases) { tab in
                        switch tab {
                        case .home:
                            Text("Home")
                                .tag(tab)
                        case .cart:
                            Text("Cart")
                                .tag(tab)
                        case .favorite:
                            Text("Favorite")
                                .tag(tab)
                        case .settings:
                            Text("Setting")
                                .tag(tab)
                        }
                    }
                }
                .background(Color.red)
            }
            .background(Color.red)
            VStack{
                Spacer()
                CustomTabbarView(selectedTab: $selectedTab)
            }
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}
#Preview {
    MainView()
}
