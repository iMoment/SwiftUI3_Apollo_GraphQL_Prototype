//
//  LaunchCard.swift
//  Apollo_GraphQL
//
//  Created by Stanley Pan on 2022/01/10.
//

import SwiftUI

struct LaunchCard: View {
    var launch: Launches.Launch
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Launch ID: \(launch.id)")
            Text("Site: \(launch.site)")
            Text("Mission: \(launch.mission.name)")
            Text("Rocket name: \(launch.rocket.name)")
            Text("Rocket ID: \(launch.rocket.id)")
        }
        .frame(maxWidth: 300, alignment: .leading)
        .padding()
        .background(Color.indigo)
        .cornerRadius(20.0)
    }
}

struct LaunchCard_Previews: PreviewProvider {
    static var previews: some View {
        LaunchCard(launch: launchPreview)
    }
}
