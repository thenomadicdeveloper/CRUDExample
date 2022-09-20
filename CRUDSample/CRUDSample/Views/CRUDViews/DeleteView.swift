//
//  DeleteView.swift
//  CRUDSample
//
//  Created by Davin Henrik on 9/7/22.
//

import SwiftUI

struct DeleteView: View {
    @ObservedObject var readViewModel = ReadViewModel()
    var body: some View {
        Text("\(readViewModel.readUserName)")
        Text("\(readViewModel.readUserState)")
        Text("\(readViewModel.readUserAge)")
        Text("\(readViewModel.readUserJob)")
        Button("Delete Data") {
            readViewModel.deleteUserData()
        }
    }
}

struct DeleteView_Previews: PreviewProvider {
    static var previews: some View {
        DeleteView()
    }
}
