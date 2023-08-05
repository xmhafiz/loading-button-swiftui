//
//  LoadingButton.swift
//  CustomButtonSwiftUI
//
//  Created by Mohd Hafiz on 05/08/2023.
//

import SwiftUI

struct LoadingButton: View {
    var title: String
    @Binding var isLoading: Bool
    var loadingText: String?
    var backgroundColor: Color?
    var loaderTintColor: Color?
    var action: (() -> Void)?
    
    var body: some View {
        Button(action: {
            action?()
        }) {
            HStack (spacing: 16) {
                if isLoading {
                    if let loadingText {
                        Text(loadingText).foregroundColor(.white)
                    }
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .tint(loaderTintColor ?? .white)
                    
                } else {
                    Text(title).foregroundColor(.white)
                }
            }.frame(maxWidth: .infinity)
        }
        .frame(height: 54)
        .background(backgroundColor ?? .blue)
        .cornerRadius(8)
    }
}
