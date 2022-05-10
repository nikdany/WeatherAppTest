//
//  HomeViewModel.swift
//  WeatherApp(MVVM+C_Swiftui_Combine_GraphQL)
//
//  Created by Nikita Danylchenko on 08.05.2022.
//

import Combine

protocol HomeViewModelType: ObservableObject {
    // Inputs
    func goToSecondView()

    // Outputs
    var text: String { get }
}

class HomeViewModel: HomeViewModelType {

    private let cancelBag = CancelBag()
    private let goToSecondViewSubject = PassthroughSubject<Void, Never>()
    private let textReceivedSubject = PassthroughSubject<String, Never>()

    // Inputs
    func goToSecondView() {
        goToSecondViewSubject.send(())
    }

    // Outputs
    @Published private(set) var text: String = ""

    var coordinatorInput: CoordinatorInput!
    var coordinatorOutput: CoordinatorOutput!

    struct CoordinatorInput {
        var goToSecondView: AnyPublisher<Void, Never>
    }

    struct CoordinatorOutput {
        var textReceived: PassthroughSubject<String, Never>
    }

    init() {
        coordinatorInput = CoordinatorInput(goToSecondView: goToSecondViewSubject.eraseToAnyPublisher())
        coordinatorOutput = CoordinatorOutput(textReceived: textReceivedSubject)

        setupSubjects()
    }

    private func setupSubjects() {
        textReceivedSubject
            .assign(to: \.text, on: self)
            .store(in: cancelBag)
    }
}
