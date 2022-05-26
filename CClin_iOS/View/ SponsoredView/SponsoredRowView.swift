//
//  SponsoredRowView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/17.
//

import SwiftUI

struct SponsoredRowView: View {
    
    @State var writer: String = "기업"
    @State var type: String = "협찬"
    @State var date: String = "04/26  12:10"
    @State var title: String = "기업 프로젝트 평가단 모집"
    @State var description: String = "5월 15일에 100명 규모 행사에 커피 브랜드 협찬 해주실 기업 초청합니다."
    @State var likeCnt: Int = 12
    @State var likeClicked: Bool = true
    
    var body: some View {
        VStack {
            HStack {
                HStack {
                    if writer == "AD" {
                       ADRowView()
                    }
                    else {
                        SponsoredFrontRowView(type: writer)
                    }
                }
                .padding(.trailing, 20)
               
                VStack(alignment: .leading) {
                    HStack {
                        Text("# \(type)")
                            .foregroundColor(Color.main_club)
                            .font(SpoqaHanSansNeo.bold(size: 11))
                        
                        Spacer()
                        
                        Text(date)
                            .foregroundColor(Color(hex: "D8D8D8"))
                            .font(SpoqaHanSansNeo.medium(size: 11))
                            .padding(.trailing, 11)
                        
                        Image(systemName: "heart.fill")
                            .foregroundColor(likeClicked ? Color.main_club : Color.gray_icon)
                            .font(SpoqaHanSansNeo.medium(size: 11))
                        
                        Text(String(likeCnt))
                            .foregroundColor(Color(hex: "ACACAC"))
                            .font(SpoqaHanSansNeo.medium(size: 11))
                    }
                    .padding(.bottom, 4)
                   
                    
                    Text(title)
                        .foregroundColor(Color.black)
                        .font(SpoqaHanSansNeo.bold(size: 13))
                        .padding(.bottom, 1)
                    
                    Text(description)
                        .lineLimit(1)
                        .foregroundColor(Color.gray_text)
                        .font(SpoqaHanSansNeo.medium(size: 11))
                }
            }
        }
        .frame(height: 62)
        .padding(.vertical, 15)
        .padding(.horizontal, 31)
    }
}

struct SponsoredRowView_Previews: PreviewProvider {
    static var previews: some View {
        SponsoredRowView()
    }
}
