//
//  ContentView.swift
//  CRUDSample
//
//  Created by Davin Henrik on 9/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            CRUDButtonsView()
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
