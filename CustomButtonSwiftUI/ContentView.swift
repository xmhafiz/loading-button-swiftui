//
//  ContentView.swift
//  CustomButtonSwiftUI
//
//  Created by Mohd Hafiz on 05/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = false
    @State private var keepLoading = true
    var body: some View {
        VStack {
            Text("Default state")
            LoadingButton(
                title: "Press Me",
                isLoading: $isLoading,
                loadingText: "Loading.."
            ) {
                doTask()
            }
            Text("Loading state")
            LoadingButton(
                title: "Press Me",
                isLoading: $keepLoading
            )
            Text("Loading state with text")
            LoadingButton(
                title: "Press Me",
                isLoading: $keepLoading,
                loadingText: "Loading.."
            )
            Text("Loading state with text - black")
            LoadingButton(
                title: "Press Me",
                isLoading: $keepLoading,
                loadingText: "Fetching..",
                backgroundColor: .black, loaderTintColor: .yellow
            )
            Text("Loading state with text - red")
            LoadingButton(
                title: "Press Me",
                isLoading: $keepLoading,
                loadingText: "Please wait..",
                backgroundColor: .red
            )
        }
        .padding()
    }

    func doTask() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            self.isLoading = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
