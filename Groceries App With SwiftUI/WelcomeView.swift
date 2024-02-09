//
//  WelcomeView.swift
//  Groceries App With SwiftUI
//
//  Created by Nicola Kaleta on 09/02/2024.
//

import SwiftUI

struct WelcomeView: View {
    @State private var presentCategories = false
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Image(uiImage: Images.Welcome.background)
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Image(uiImage: Images.Welcome.logo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    
                    Text("Welcome to our store")
                        .font(.system(size: 48, weight: .semibold, design: .rounded))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                        .padding(.bottom, 8)
                    
                    Text("Get Your groceries in as fast as one hour")
                        .font(.system(size: 18, weight: .regular, design: .rounded))
                        .foregroundStyle(.gray)
                        .padding(.bottom, 40)
                    
                    Button {
                        // Action
                        presentCategories.toggle()
                        
                    } label: {
                        
                        Text("Get Started")
                            .foregroundStyle(.white)
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 16)
                    .background(.green)
                    .cornerRadius(12)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 90)
                }
            }
            .navigationDestination(isPresented: $presentCategories) {
                Text("Categories Screen")
            }
        }
    }
}

#Preview {
    WelcomeView()
}
