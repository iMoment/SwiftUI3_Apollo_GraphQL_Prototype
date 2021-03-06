//
//  Apollo_GraphQLApp.swift
//  Apollo_GraphQL
//
//  Created by Stanley Pan on 2022/01/10.
//

import SwiftUI

@main
struct Apollo_GraphQLApp: App {
    @StateObject var launchViewModel = LaunchViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(launchViewModel)
        }
    }
}
