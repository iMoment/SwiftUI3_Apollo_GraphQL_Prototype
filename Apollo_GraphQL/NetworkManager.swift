//
//  NetworkManager.swift
//  Apollo_GraphQL
//
//  Created by Stanley Pan on 2022/01/10.
//

import Foundation
import Apollo

class NetworkManager {
    static let shared = NetworkManager()
    
    let url = "https://apollo-fullstack-tutorial.herokuapp.com/"
    
    private(set) lazy var apolloClient = ApolloClient(url: URL(string: url)!)
}
