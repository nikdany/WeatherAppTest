//
//  FavoriteView.swift
//  WeatherApp(MVVM+C_Swiftui_Combine_GraphQL)
//
//  Created by Nikita Danylchenko on 08.05.2022.
//

import SwiftUI

struct SecondView<VM>: View where VM: SecondViewModelType {
    @ObservedObject var viewModel: VM

    var body: some View {
        VStack {
            TextField("Text", text: $viewModel.text)

            Button(action: {
                viewModel.close()
            }, label: {
                Text("Back")
            })
        }
        .navigationBarHidden(true)
    }
}

