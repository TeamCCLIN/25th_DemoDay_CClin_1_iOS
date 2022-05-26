//
//  UserModel.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/17.
//

import SwiftUI

class UserModel:ObservableObject {
    
    static let shared = UserModel()
    
    @Published var type: LoginType = .club
    @Published var name: String?
    @Published var id: String?
    @Published var password: String?
    @Published var description: String?
    @Published var category: SelectedCategory?
    @Published var foundYear: Int?
    @Published var area: String?
    @Published var clubUrl: String?
    
//    private init() { }
}

enum LoginType: String {
    case company = "기업"
    case club = "학생단체"
}
