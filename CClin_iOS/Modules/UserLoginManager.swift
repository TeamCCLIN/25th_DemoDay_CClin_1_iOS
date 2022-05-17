//
//  UserLoginManager.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/18.
//

import SwiftUI
import RealmSwift
import Alamofire

final class UserLoginManager: NSObject {

    static let shared = UserLoginManager()
    private override init() { }

    // 1
    func doServerRegister(userModel: UserModel) {
        Repositories.shared.registerForClub(userModel: userModel) { status, registerResponse in
            if let accessToken = registerResponse?.token.accessToken {
                //
            }
        }
    }
    
    func doLogin(id: String, password: String) {
        Repositories.shared.login(id: id, password: password) { status, loginResponse in
//            if let accessToken = loginResponse?.token.accessToken {
//
//            }
        }
    }
}
