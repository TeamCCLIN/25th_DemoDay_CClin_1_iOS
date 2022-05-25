//
//  CompanyDetailView.swift
//  CClin_iOS
//
//  Created by 민경 on 2022/05/26.
//

import SwiftUI

struct CompanyDetailView: View{
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
            VStack(spacing: 16) {
        
                HStack(spacing:14) {
                    Image("Company_logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 90)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray_button_line, lineWidth: 2))
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("IT/웹/통신 | 스타트업")
                            .font(SpoqaHanSansNeo.medium(size: 10))
                        Text("고퀄")
                            .font(SpoqaHanSansNeo.bold(size: 30))
                        Text("누구나 쉽게 스마트홈을 누릴 수 있도록 스마트홈 IoT의 대중화를 이끌다")
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
