//
//  CreateViewModel.swift
//  CRUDSample
//
//  Created by Davin Henrik on 9/7/22.
//

import Foundation
import SwiftUI

class CreateViewModel: ObservableObject {
    @Published var usernameText: String = ""
    @Published var userStateText: String = ""
    @Published var userAgeText: String = ""
    @Published var userJobText: String = ""
    func saveUserData() {
        UserDefaults.standard.set(self.usernameText, forKey: "Username")
        UserDefaults.standard.set(self.userStateText, forKey: "UserState")
        UserDefaults.standard.set(self.userAgeText, forKey: "UserAge")
        UserDefaults.standard.set(self.userJobText, forKey: "UserJob")
    }
    func updateUserName() {
        UserDefaults.standard.set(self.usernameText, forKey: "Username")
    }
    func updateUserState() {
        UserDefaults.standard.set(self.userStateText, forKey: "UserState")
    }
    func updateUserAge() {
        UserDefaults.standard.set(self.userAgeText, forKey: "UserAge")
    }
    func updateUserJob() {
        UserDefaults.standard.set(self.userJobText, forKey: "UserJob")
    }
}
