//
//  ReadViewModel.swift
//  CRUDSample
//
//  Created by Davin Henrik on 9/7/22.
//

import Foundation
import SwiftUI

class ReadViewModel: ObservableObject {
    @Published var readUserName: String = ""
    @Published var readUserState: String = ""
    @Published var readUserAge: String = ""
    @Published var readUserJob: String = ""
    func readUserData() {
        readUserName = UserDefaults.standard.string(forKey: "Username") ?? ""
        readUserState = UserDefaults.standard.string(forKey: "UserState") ?? ""
        readUserAge = UserDefaults.standard.string(forKey: "UserAge") ?? ""
        readUserJob = UserDefaults.standard.string(forKey: "UserJob") ?? ""
    }
    func deleteUserData() {
        UserDefaults.standard.removeObject(forKey: "Username")
        UserDefaults.standard.removeObject(forKey: "UserState")
        UserDefaults.standard.removeObject(forKey: "UserAge")
        UserDefaults.standard.removeObject(forKey: "UserJob")
    }
}
