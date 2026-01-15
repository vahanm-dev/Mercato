//
//  MainTabBar.swift
//  Mercato
//
//  Created by Vahan Muradyan on 15.01.26.
//

import SwiftUI

// MARK: - TabIdentifier

enum TabIdentifier: Hashable {
    case home
    case catalog
    case cart
    case wishlist
    case profile
}

// MARK: - MainTabBar

struct MainTabBar: View {
    @State private var selectedTab: TabIdentifier = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab(value: TabIdentifier.home) {
                HomeView()
            } label: {
                Image(systemName: IconConstants.house)
            }
            
            Tab(value: TabIdentifier.catalog) {
                CatalogView()
            } label: {
                Image(systemName: IconConstants.catalog)
            }
            
            Tab(value: TabIdentifier.cart) {
                CartView()
            } label: {
                Image(systemName: IconConstants.cart)
            }
            
            Tab(value: TabIdentifier.wishlist) {
                WishlistView()
            } label: {
                Image(systemName: IconConstants.heart)
            }
            
            Tab(value: TabIdentifier.profile) {
                ProfileView()
            } label: {
                Image(systemName: IconConstants.person)
            }
        }
    }
}

// MARK: - Preview

#Preview {
    MainTabBar()
}
