//
//  ProjectApplyModel.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/26.
//

import Foundation

class ProjectApplyModel {
    static let shared = ProjectApplyModel()
    
    var personnel: String = ""
    var purpose: String = ""
    var requests: String = ""
    var attachments: String = ""
    var link: String = ""
    
    private init() { }
}
