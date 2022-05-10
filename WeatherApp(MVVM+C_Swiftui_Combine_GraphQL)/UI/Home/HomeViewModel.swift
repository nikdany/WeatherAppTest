//
//  HomeViewModel.swift
//  WeatherApp(MVVM+C_Swiftui_Combine_GraphQL)
//
//  Created by Nikita Danylchenko on 08.05.2022.
//

import Foundation
import Combine

protocol HomeViewModelType: ObservableObject {
    // Inputs
    func goToSecondView()

    // Outputs
    var text: String { get }
}

class HomeViewModel: HomeViewModelType {

    private let cancelBag = CancelBag()
    private let weatherService = ForecastService()
    private let goToSecondViewSubject = PassthroughSubject<Void, Never>()
    private let textReceivedSubject = PassthroughSubject<String, Never>()

    // Inputs
    func goToSecondView() {
        goToSecondViewSubject.send(())
    }

    // Outputs
    @Published private(set) var text: String = ""
    @Published private(set) var weather: ForecastModel?

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
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { [weak self] text in
                guard let self = self else { return }
                self.text = text
                self.fetchWeather(city: text)
            })
            .store(in: cancelBag)
    }

    private func fetchWeather(city: String) {
        weatherService.fetchWeathe(for: city, config: .init(units: .metric, lang: .en))
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    print(error)
                default:
                    break
                }
            }, receiveValue: { [weak self] forecat in
                guard let self = self else { return }

                self.weather = forecat

            })
            .store(in: self.cancelBag)
    }
}
