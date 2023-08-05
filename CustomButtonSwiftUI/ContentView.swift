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
            Text("Hello world")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
