//
//  BaseScrollView.swift
//  CClin_iOS
//
//  Created by 홍희수 on 2022/05/20.
//

import Foundation
import UIKit

class BaseScrollView: UIScrollView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("Not implemeted xib")
    }
    
    func configure() {}
    func bind() {}
}
