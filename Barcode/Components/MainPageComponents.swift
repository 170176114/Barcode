//
//  MainPageComponents.swift
//  Barcode
//
//  Created by Pang on 12/9/2021.
//

import Foundation
import SwiftUI

struct TabBar: View {
    var body: some View {
        return TabView {
            BarcodeView()
                .tabItem {
                    Image(systemName: "barcode")
                    Text("Barcode")
                }
            ListViewView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("ListView")
                }
        }
    }
}
