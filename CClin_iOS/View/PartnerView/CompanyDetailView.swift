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
                            .lineSpacing(2)
                            .font(SpoqaHanSansNeo.medium(size: 10))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
        
        VStack(spacing: 20) {
            
            Text("우리 기업은 학생 단체와 8번의 프로젝트를 진행했어요")
                .font(SpoqaHanSansNeo.medium(size: 40))
            
            HStack(spacing:14){
                Text("진행한 프로젝트")
                    .font(SpoqaHanSansNeo.regular(size: 10))
                Text("진행한 제휴/협찬")
                    .font(SpoqaHanSansNeo.regular(size: 10))
                
            }
            
            Image("dummy4")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 94)
                .cornerRadius(5)
                .padding(.bottom, 10)
            Image("dummy5")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 94)
                .cornerRadius(5)
                .padding(.bottom, 10)
            
           Text("기업 소개")
                .font(SpoqaHanSansNeo.medium(size: 20))
                
            }
        }
        
        
    }

