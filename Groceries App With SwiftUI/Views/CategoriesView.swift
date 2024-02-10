//
//  CategoriesView.swift
//  Groceries App With SwiftUI
//
//  Created by Nicola Kaleta on 09/02/2024.
//

import SwiftUI

struct CategoriesView: View {
    private let viewModel = CategoriesViewModel()
    
    @State private var searchText = ""
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(viewModel.categoriesList, id: \.self.id) { item in
                        CategoryCard(model: item)
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("Find products")
            .navigationBarTitleDisplayMode(.inline)
            .scrollIndicators(ScrollIndicatorVisibility.never)
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search store")
        }
    }
}

#Preview {
    CategoriesView()
}
