//
//  UpdateView.swift
//  CRUDSample
//
//  Created by Davin Henrik on 9/7/22.
//

import SwiftUI

struct UpdateView: View {
    @ObservedObject var createViewModel = CreateViewModel()
    var body: some View {
        VStack {
            Text("Update User Info")
                .bold()
                .padding()
            HStack {
                Button("Save") {createViewModel.updateUserName()}
                    .padding()
                    .border(.black, width: 2)
                TextField("Username", text: $createViewModel.usernameText)
            }
            HStack {
                Button("Save") {createViewModel.updateUserState()}
                    .padding()
                    .border(.black, width: 2)
                TextField("State", text: $createViewModel.userStateText)
            }
            HStack {
                Button("Save") {createViewModel.updateUserAge()}
                    .padding()
                    .border(.black, width: 2)
                TextField("Age", text: $createViewModel.userAgeText)
            }
            HStack {
                Button("Save") {createViewModel.updateUserJob()}
                    .padding()
                    .border(.black, width: 2)
                TextField("Job", text: $createViewModel.userJobText)
            }
        }
        .padding(.leading)
    }
}

struct UpdateView_Previews: PreviewProvider {
    static var previews: some View {
        UpdateView()
    }
}
