//
//  FavoriteViewModel.swift
//  WeatherApp(MVVM+C_Swiftui_Combine_GraphQL)
//
//  Created by Nikita Danylchenko on 08.05.2022.
//

import Combine

protocol SecondViewModelType: ObservableObject {
    // Inputs
    func close()

    // Bindings
    var text: String { get set }
}

class SecondViewModel: SecondViewModelType {
    private let closeSubject = PassthroughSubject<String, Never>()

    // Inputs
    func close() {
        closeSubject.send(text)
    }

    // Bindings
    @Published var text: String = ""

    var coordinatorInput: CoordinatorInput!
    var coordinatorOutput: CoordinatorOutput!

    struct CoordinatorInput {
        var close: AnyPublisher<String, Never>
    }

    struct CoordinatorOutput {

    }

    init() {
        coordinatorInput = CoordinatorInput(close: closeSubject.eraseToAnyPublisher())
        coordinatorOutput = CoordinatorOutput()

        setupSubjects()
    }

    private func setupSubjects() {

    }
}

