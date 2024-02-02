//
//  CustomTabbar.swift
//  Custom-Tabbar
//
//  Created by Kambiz on 2024-02-01.
//

import SwiftUI

struct CustomTabbarView: View {
    @Binding var selectedTab: TabBarOptionModel

    var body: some View {
        ZStack{
            Color(.black)
            HStack{
                
                ForEach(TabBarOptionModel.allCases, id: \.id) { tab in
                    Spacer()
                    TabDesign(tab: tab, selectedTab: $selectedTab)
                    Spacer()
                }
            }
            .clipShape(Capsule())
        }
        .frame(height: 87)
        .clipShape(Capsule())
        .padding(.horizontal,42)
    }
}

#Preview {
    CustomTabbarView(selectedTab: .constant(.home))
}

struct TabDesign: View {
    @State var tab: TabBarOptionModel = .home
    @Binding var selectedTab: TabBarOptionModel
    
    var body: some View {
        ZStack{
            Button{
                withAnimation(.spring) {
                    selectedTab = tab
                }
            } label: {
                VStack{
                    Image(tab.systemImageName)
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .foregroundStyle(selectedTab == tab ? .yellow : .white)
                    
                    if selectedTab == tab {
                        Text(tab.title)
                            .font(.system(size: 10))
                            .foregroundStyle(.white)
                            .frame(width: 100)
                    }
                }
                .padding()
            }
        }
        .frame(width: selectedTab == tab ? 70 : 32)
        .clipShape(Capsule())
    }
}
