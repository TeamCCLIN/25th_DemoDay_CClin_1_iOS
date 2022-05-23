//
//  KeepSponsoredView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/24.
//

import SwiftUI

struct KeepSponsoredView: View {
    var body: some View {
        ScrollView {
            VStack {
                SponsoredRowView(writer: "학생단체", type: "홍보", date: "06/12  08:01", title: "대학생 단체도 돕고 우리 브랜드 홍보도 하고!", description: "총 인원 501명인 전국 디자인학과 재학생 단체에서 인쇄가 필요합니다", likeCnt: 11, likeClicked: true)
                
                Rectangle()
                    .foregroundColor(Color.gray_button_line)
                    .frame(height:1)
                    .padding(.horizontal, 30)
                
                SponsoredRowView(writer: "기업", type: "협찬", date: "07/21 01:01", title: "에너지 드링크 협찬합니다.", description: "러닝, 스포츠 관련 동아리에 에너지 드링크 20개입 3박스", likeCnt: 33, likeClicked: true)
                
                Rectangle()
                    .foregroundColor(Color.gray_button_line)
                    .frame(height:1)
                    .padding(.horizontal, 30)
            }
        }
    }
}

struct KeepSponsoredView_Previews: PreviewProvider {
    static var previews: some View {
        KeepSponsoredView()
    }
}
