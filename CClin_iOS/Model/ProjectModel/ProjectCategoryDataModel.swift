//
//  ProjectCategoryDataModel.swift
//  CClin_iOS
//
//  Created by 홍희수 on 2022/05/20.
//

import Foundation
import UIKit

struct ProjectCategoryDataModel {
    enum DataModelType: String {
        case one
        case two
        case three
        case four
        case five
        case six
    }
    
    let type: DataModelType
    
    var image: UIImage {
        switch type {
        case .one:
            return UIImage(named: "경쟁")!
        case .two:
            return UIImage(named: "인재채용")!
        case .three:
            return UIImage(named: "아이디어공모")!
        case .four:
            return UIImage(named: "경제")!
        case .five:
            return UIImage(named: "교육")!
        case .six:
            return UIImage(named: "문화역사")!
        }
    }
}

struct Mocks {
    static func getDataSource() -> [ProjectCategoryDataModel] {
        return [ProjectCategoryDataModel(type: .one),
                ProjectCategoryDataModel(type: .two),
                ProjectCategoryDataModel(type: .three),
                ProjectCategoryDataModel(type: .four),
                ProjectCategoryDataModel(type: .five),
                ProjectCategoryDataModel(type: .six)]
    }
}
