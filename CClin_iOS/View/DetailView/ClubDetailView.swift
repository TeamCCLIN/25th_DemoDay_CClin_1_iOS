//
//  ClubDetailView.swift
//  CClin_iOS
//
//  Created by 민경 on 2022/05/26.
//

import SwiftUI

struct ClubDetailView: View{
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
            VStack(spacing: 16) {
        
                HStack(spacing:14) {
                    Image("kusitms_logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 90)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray_button_line, lineWidth: 2))
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("IT/기술 | 회원 619명")
                            .font(SpoqaHanSansNeo.medium(size: 10))
                        Text("큐시즘")
                            .font(SpoqaHanSansNeo.bold(size: 30))
                        Text("기획자, 개발자, 디자이너가 모여 하나의 가치를 창조하는 IT서비스 학회")
                            .font(SpoqaHanSansNeo.medium(size: 10))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.gray_bottom)
                .cornerRadius(7)
                
                HStack(spacing:16) {
                    Image(systemName: "heart.fill")
                        .foregroundColor(Color.main_club)
                    
                    Text("찜한 목록")
                        .font(SpoqaHanSansNeo.medium(size: 10))
                    
                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.gray_bottom)
                .cornerRadius(7)
            }
    }
}
