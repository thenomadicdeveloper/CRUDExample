//
//  ReadView.swift
//  CRUDSample
//
//  Created by Davin Henrik on 9/7/22.
//

import SwiftUI

struct ReadView: View {
    @ObservedObject var readViewModel = ReadViewModel()
    var body: some View {
        VStack {
        Text("\(readViewModel.readUserName)")
        Text("\(readViewModel.readUserState)")
        Text("\(readViewModel.readUserAge)")
        Text("\(readViewModel.readUserJob)")
        }
        .onAppear {
            readViewModel.readUserData()
        }
    }
}

struct ReadView_Previews: PreviewProvider {
    static var previews: some View {
        ReadView()
    }
}
