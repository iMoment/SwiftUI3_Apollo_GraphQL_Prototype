//
//  LaunchViewModel.swift
//  Apollo_GraphQL
//
//  Created by Stanley Pan on 2022/01/10.
//

import Foundation

class LaunchViewModel: ObservableObject {
    
    init() {
       fetch()
    }
    
    func fetch() {
        NetworkManager.shared.apolloClient.fetch(query: LaunchListQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                print("Fetch was successful. Result: \(graphQLResult)")
            case .failure(let error):
                print("Fetch failed. Error: \(error)")
            }
        }
    }
}
