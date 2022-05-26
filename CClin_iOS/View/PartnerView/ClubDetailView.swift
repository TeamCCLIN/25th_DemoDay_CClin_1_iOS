//
//  ClubDetailView.swift
//  CClin_iOS
//
//  Created by 민경 on 2022/05/26.
//

import SwiftUI

struct ClubDetailView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        VStack() {
            ZStack
            {
                Image("background_kusitms")
                
                HStack(spacing: 22) {
                    Image("logo_kusitms")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 129)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("IT•기술 | 회원 619명")
                            .foregroundColor(Color.white)
                            .font(SpoqaHanSansNeo.medium(size: 11))
                        
                        HStack {
                            Text("큐시즘")
                                .foregroundColor(Color.white)
                                .font(SpoqaHanSansNeo.bold(size: 30))
                                .padding(.trailing, 90)
                            
                            Image(systemName: "pencil")
                                .font(SpoqaHanSansNeo.bold(size: 20))
                                .foregroundColor(Color.white)
                        }
                        .padding(.bottom, 20)
                        
                        Text("기획자, 개발자, 디자이너가 모여 하나의 가치를 창조하는 IT서비스 학회")
                            .lineLimit(2)
                            .font(SpoqaHanSansNeo.medium(size: 11))
                            .padding(.bottom, 20)
                    }
                }
                .padding(.top, 130)
                
                Rectangle()
                    .foregroundColor(Color.gray_button_line)
                    .frame(height: 1)
                    .padding(.top, 275)
                    .padding(.horizontal, 33)
            }
            
        }
    }
}