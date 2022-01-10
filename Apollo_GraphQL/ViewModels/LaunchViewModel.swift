//
//  LaunchViewModel.swift
//  Apollo_GraphQL
//
//  Created by Stanley Pan on 2022/01/10.
//

import Foundation

class LaunchViewModel: ObservableObject {
    @Published var launches: [Launches.Launch] = []
    
    init() {
       fetch()
    }
    
    func fetch() {
        NetworkManager.shared.apolloClient.fetch(query: LaunchListQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                if let launches = graphQLResult.data?.launches {
                    print("Fetch was successful. Result: \(graphQLResult)")
                    self.launches = self.process(data: launches)
                } else if let errors = graphQLResult.errors {
                    print("GraphQL encountered an error: \(errors)")
                }
            case .failure(let error):
                print("Fetch failed. Error: \(error)")
            }
        }
    }
    
    // MARK: Process data from GraphQL
    func process(data: LaunchData) -> [Launches.Launch] {
        return Launches(data).launches
    }
}
