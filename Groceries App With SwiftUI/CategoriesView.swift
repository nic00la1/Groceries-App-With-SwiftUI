//
//  CategoriesView.swift
//  Groceries App With SwiftUI
//
//  Created by Nicola Kaleta on 09/02/2024.
//

import SwiftUI

struct CategoriesView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
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
