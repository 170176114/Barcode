//
//  LoginComponents.swift
//  Barcode
//
//  Created by Pang on 12/9/2021.
//

import Foundation
import SwiftUI

extension Color {
    static let FirstColor = Color("blue")
    static let SecondColor = Color("orange")
    static let ThirdColor = Color("red")
    static let LastColor = Color("beige")
}


struct Login : View {
    var body: some View {
        Text("Welcome")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
        Image("sontec")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
    }
}

struct LoginButtonText: View {
    var body: some View {
        return Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .cornerRadius(15.0)
            .background(Color.FirstColor)
    }
}
