//
//  HomeView.swift
//  WeatherApp(MVVM+C_Swiftui_Combine_GraphQL)
//
//  Created by Nikita Danylchenko on 08.05.2022.
//

import SwiftUI

struct HomeView<VM>: View where VM: HomeViewModelType {
    @ObservedObject var viewModel: VM

    var body: some View {
        VStack {
            Button(action: {
                viewModel.goToSecondView()
            }, label: {
                Text("Second View")
            })

            Text(viewModel.text)
        }
        .background(.white)
        .navigationBarHidden(true)
    }
}

struct HomeView_Preview: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}
