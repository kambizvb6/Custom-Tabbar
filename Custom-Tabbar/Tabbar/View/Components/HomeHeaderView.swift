//
//  MainHeaderView.swift
//  Custom-Tabbar
//
//  Created by Kambiz on 2024-02-01.
//

import SwiftUI

struct HomeHeaderView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack{
            VStack{
                
                Rectangle()
                    .foregroundStyle(.headerBG)
                    .frame(height: 214)
                    .clipShape(
                        .rect(
                            topLeadingRadius: 52,
                            bottomLeadingRadius: 20,
                            bottomTrailingRadius: 20,
                            topTrailingRadius: 52
                        )
                    )
                    .padding(4)
                    .overlay {
                        VStack(spacing: 24.0){
                            HStack{
                                VStack(alignment: .leading){
                                    Text("Location")
                                        .font(.system(size: 12))
                                        .fontWeight(.regular)
                                        .foregroundStyle(.white.opacity(0.8))
                                    
                                    HStack(spacing: 0){
                                        Image("Location")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 24, height: 24)
                                        
                                        Text("New York, USA")
                                            .font(.system(size: 16))
                                            .fontWeight(.regular)
                                            .foregroundStyle(.white)
                                        
                                        Button {
                                            
                                        } label: {
                                            VStack{
                                                Image("ArrowDown")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 22, height: 22)
                                            }
                                            .frame(width: 24, height: 24)
                                            
                                        }
                                        
                                    }
                                }
                                
                                Spacer()
                                
                                HStack{
                                    Rectangle()
                                        .frame(width: 42, height: 42)
                                        .foregroundStyle(.white.opacity(0.15))
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .overlay {
                                            Image("Basket")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 28, height: 28)
                                        }
                                    
                                    Rectangle()
                                        .frame(width: 42, height: 42)
                                        .foregroundStyle(.white.opacity(0.15))
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .overlay {
                                            Image("Notification")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 28, height: 28)
                                        }
                                }
                            }
                                //.background(.red)
                            .padding(.top)
                            .padding(.horizontal, 26)
                            
                            VStack{
                                HStack{
                                    Rectangle()
                                        .frame( height: 50)
                                        .foregroundStyle(.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .overlay {
                                            HStack{
                                                Image("Search")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 24, height: 24)
                                                
                                                TextField("", text: $searchText)
                                                
                                                Image("Scan")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 24, height: 24)
                                                    .onTapGesture {
                                                        print("Scan")
                                                    }
                                            }
                                            .padding(.horizontal)
                                        }
                                    
                                    Rectangle()
                                        .frame(width: 49, height: 50)
                                        .foregroundStyle(.white)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .overlay {
                                            ZStack{
                                                Image("SearchSetting")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 28)
                                            }
                                        }
                                        .onTapGesture {
                                            print("SearchSetting")
                                        }
                                    
                                }
                            }
                            .padding(.horizontal, 26)
                            
                        }
                        .padding(.top, 60)
                        .padding(.bottom, 18)
                    }
                
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .ignoresSafeArea()
        }
    }
}



#Preview {
    HomeHeaderView()
}
