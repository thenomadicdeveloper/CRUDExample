//
//  CreateView.swift
//  CRUDSample
//
//  Created by Davin Henrik on 9/7/22.
//

import SwiftUI

struct CreateView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var createViewModel = CreateViewModel()
    var body: some View {
        Section(header: Text("Personal Info")) {
            VStack {
                Form {
                    TextField("Username", text: $createViewModel.usernameText)
                    TextField("State", text: $createViewModel.userStateText)
                    TextField("Age", text: $createViewModel.userAgeText)
                    TextField("Job", text: $createViewModel.userJobText)
                    Button("Save Data") {
                        createViewModel.saveUserData()
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
