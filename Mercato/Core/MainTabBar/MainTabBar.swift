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
                NavigationStack {
                    HomeView()
                }
            } label: {
                Image(systemName: IconConstants.house)
            }
            
            Tab(value: TabIdentifier.catalog) {
                NavigationStack {
                    CatalogView()
                }
            } label: {
                Image(systemName: IconConstants.catalog)
            }
            
            Tab(value: TabIdentifier.cart) {
                NavigationStack {
                    CartView()
                }
            } label: {
                Image(systemName: IconConstants.cart)
            }
            .badge(3)
            
            Tab(value: TabIdentifier.wishlist) {
                NavigationStack {
                    WishlistView()
                }
            } label: {
                Image(systemName: IconConstants.heart)
            }
            
            Tab(value: TabIdentifier.profile) {
                NavigationStack {
                    ProfileView()
                }
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
