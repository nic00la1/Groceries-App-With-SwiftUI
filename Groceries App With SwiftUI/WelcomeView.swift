//
//  WelcomeView.swift
//  Groceries App With SwiftUI
//
//  Created by Nicola Kaleta on 09/02/2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image(uiImage: Images.Welcome.background)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Button {
                    // Action
                    
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
    }
}

#Preview {
    WelcomeView()
}
