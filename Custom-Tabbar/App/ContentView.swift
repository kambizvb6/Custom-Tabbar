//
//  ContentView.swift
//  Custom-Tabbar
//
//  Created by Kambiz on 2024-01-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Rectangle()
                .frame(width: 310, height: 87)
                .clipShape(RoundedRectangle(cornerRadius: 45))
                .padding(.horizontal)
                .overlay {
                    HStack(spacing: 36.0){
                        Image("Home")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                        
                        Image("Home")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                        
                        Image("Home")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                        
                        Image("Home")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                        
                    }
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
