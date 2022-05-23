//
//  keepPartnerRowView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/24.
//

import SwiftUI

struct keepPartnerRowView: View {
    
    @State var image: String = ""
    @State var type: String = ""
    @State var name: String = ""
    @State var description: String = ""
    
    var body: some View {
        VStack {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 84, height: 84)
                .padding(.trailing, 13)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("#\(type)")
                    Spacer()
                    Image(systemName: "heart.fill")
                }
                .foregroundColor(Color.main_club)
                .font(SpoqaHanSansNeo.bold(size: 11))
                
                Text(name)
                    .font(SpoqaHanSansNeo.bold(size: 15))
                    .padding(.top, 3)
                    .padding(.bottom, 3)
                
                Text(description)
                    .foregroundColor(Color.gray_text)
                    .font(SpoqaHanSansNeo.medium(size: 11))
                
            }
        }
            Rectangle()
                .foregroundColor(Color.gray_button_line)
                .frame(height:1)
                .padding(.vertical, 15)
        }
        .padding(.horizontal, 30)
    }
}

struct keepPartnerRowView_Previews: PreviewProvider {
    static var previews: some View {
        keepPartnerRowView(image: "logo_kusitsm", type: "IT/기술", name: "한국대학생IT경영학회", description: "기획자, 개발자, 디자이너가 모여 하나의 가치를 창조하는 IT 서비스 학회, 큐시즘")
    }
}
