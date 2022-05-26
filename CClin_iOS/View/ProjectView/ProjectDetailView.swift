//
//  ProjectDetailView.swift
//  CClin_iOS
//
//  Created by 홍희수 on 2022/05/26.
//

import SwiftUI

struct ProjectDetailView: View {
    
    @State var isMyPageViewActive: Bool = false
    var body: some View {
        ScrollView() {
            VStack {
                
                HStack {
                    Text("신청조건")
                        .font(SpoqaHanSansNeo.bold(size: 13))
                        .foregroundColor(Color(hex: "474646"))
                    
                    Spacer()
                    
                    VStack {
                        Text("국내 대학교 재/휴학생 모두")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.bold(size: 13))
                        
                        //Spacer()
                        
                        Text("(단, 대학원생 제외)")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.bold(size: 13))
                    }
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                
                Rectangle()
                    .frame(height:1)
                    .foregroundColor(Color.gray_button_line)
            }
            
            VStack {
                
                HStack {
                    Text("프로젝트 기간")
                        .font(SpoqaHanSansNeo.bold(size: 13))
                        .foregroundColor(Color(hex: "474646"))
                    
                    Spacer()
                    
                    VStack {
                        Text("신청")
                            .font(SpoqaHanSansNeo.bold(size: 13))
                            .foregroundColor(Color(hex: "474646"))
                        Text("2022.05.10 - 2022.06.15")
                            .foregroundColor(Color.gray)
                            .font(SpoqaHanSansNeo.bold(size: 10))
                        
                        Spacer()
                        
                        
                        Text("선발")
                            .font(SpoqaHanSansNeo.bold(size: 13))
                            .foregroundColor(Color(hex: "474646"))
                        Text("2022.06.16 - 2022.06.20")
                            .foregroundColor(Color.gray)
                            .font(SpoqaHanSansNeo.bold(size: 10))
                        
                        Spacer()
                        
                        
                        Text("OT")
                            .font(SpoqaHanSansNeo.bold(size: 13))
                            .foregroundColor(Color(hex: "474646"))
                        Text("2022.06.22")
                            .foregroundColor(Color.gray)
                            .font(SpoqaHanSansNeo.bold(size: 10))
                        
                        Spacer()
                        
                        
                        /*Text("진행기간")
                            .font(SpoqaHanSansNeo.bold(size: 13))
                            .foregroundColor(Color(hex: "474646"))
                        Text("2022.06.22 - 2022.07.15")
                            .foregroundColor(Color.gray)
                            .font(SpoqaHanSansNeo.bold(size: 10))
                        
                        Spacer()
                        
                        
                        Text("최종 발표 및 피드백")
                            .font(SpoqaHanSansNeo.bold(size: 13))
                            .foregroundColor(Color(hex: "474646"))
                        Text("2022.07.25")
                            .foregroundColor(Color.gray)
                            .font(SpoqaHanSansNeo.bold(size: 10))*/
                    }
                    
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                
                Rectangle()
                    .frame(height:1)
                    .foregroundColor(Color.gray_button_line)
                    .padding(.horizontal, 40)
            }
        }
        
        
    }
}

struct ProjectDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetailView()
    }
}
