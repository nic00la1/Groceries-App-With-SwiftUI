//
//  CategoryCard.swift
//  Groceries App With SwiftUI
//
//  Created by Nicola Kaleta on 10/02/2024.
//

import SwiftUI

struct CategoryCard: View {
    let model: CategoryCardModel
    
    var body: some View {
        VStack {
            Image(uiImage: model.image)
                .resizable()
                .scaledToFit()
                .frame(height: 75)
            Text("\(model.name)")
                .font(.system(size: 16, weight: .semibold, design: .rounded))
        }
        .frame(width: 175, height: 190)
        .background(model.color)
        .cornerRadius(20)
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(model.borderColor, lineWidth: 2)
        }
    }
}

#Preview {
    CategoryCard(model: .init(name: "Frash Fruits & Vegetable", image: Images.Category.fruitsVegs, color: Color.Cards.fruitVeg, borderColor: Color.Cards.fruitVeg))
}
