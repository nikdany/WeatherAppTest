//
//  AppCoordinator.swift
//  WeatherApp(MVVM+C_Swiftui_Combine_GraphQL)
//
//  Created by Nikita Danylchenko on 08.05.2022.
//

import UIKit
import SwiftUI
import Combine

class AppCoordinator: Coordinator<Void> {
    private let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    override func start() -> AnyPublisher<Void, Never> {
        return self.coordinate(to: HomeCoordinator(window: window))
    }
}
