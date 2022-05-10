//
//  Apollo.swift
//  WeatherApp(MVVM+C_Swiftui_Combine_GraphQL)
//
//  Created by Nikita Danylchenko on 11.05.2022.
//

import Foundation
import Apollo
//import ApolloSQLite

// MARK: - Singleton Wrapper
class NetworkApolloController {

    static let shared = NetworkApolloController()

    var client: ApolloClient!

    init() {
        let url = URL(string: "https://graphql-weather-api.herokuapp.com/")!
        client = ApolloClient(url: url)
    }
}
