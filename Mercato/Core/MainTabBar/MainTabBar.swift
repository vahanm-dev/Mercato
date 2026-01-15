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
                Text("Home")
            } label: {
                Image(systemName: IconConstants.house)
            }
            
            Tab(value: TabIdentifier.catalog) {
                Text("Catalog")
            } label: {
                Image(systemName: IconConstants.catalog)
            }
            
            Tab(value: TabIdentifier.cart) {
                Text("Cart")
            } label: {
                Image(systemName: IconConstants.cart)
            }
            
            Tab(value: TabIdentifier.wishlist) {
                Text("Wishlist")
            } label: {
                Image(systemName: IconConstants.heart)
            }
            
            Tab(value: TabIdentifier.profile) {
                Text("Profile")
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
