//
//  KeepPartnerView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/24.
//

import SwiftUI

struct KeepPartnerView: View {
    var body: some View {
        ScrollView {
            VStack {
                keepPartnerRowView(image: "logo_kusitsm", type: "IT/기술", name: "한국대학생IT경영학회", description: "기획자, 개발자, 디자이너가 모여 하나의 가치를 창조하는 IT 서비스 학회, 큐시즘")
                
                keepPartnerRowView(image: "logo_sopt", type: "IT/기술", name: "SOPT", description: "대학생 연합 IT 벤처 창업 동아리")
            }
        }
    }
}

struct KeepPartnerView_Previews: PreviewProvider {
    static var previews: some View {
        KeepPartnerView()
    }
}
