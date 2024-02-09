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
        }
    }
}

#Preview {
    WelcomeView()
}
