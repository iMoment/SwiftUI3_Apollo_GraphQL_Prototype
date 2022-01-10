//
//  ContentView.swift
//  Apollo_GraphQL
//
//  Created by Stanley Pan on 2022/01/10.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var launchViewModel: LaunchViewModel
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(launchViewModel.launches) { launch in
                LaunchCard(launch: launch)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LaunchViewModel())
    }
}
