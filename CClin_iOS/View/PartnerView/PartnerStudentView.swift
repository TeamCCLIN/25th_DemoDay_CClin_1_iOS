//
//  PartnerStudentView.swift
//  CClin_iOS
//
//  Created by 홍희수 on 2022/05/23.
//

import SwiftUI

struct PartnerStudentView: View {
    @State var searchInput: String = ""
    @State var showLatestOrder: Bool = true
    @State var showPopularityOrder: Bool = false
    @State var showDeadlineOrder: Bool = false
    @State var isMyPageViewActive: Bool = false
    var body: some View {
        VStack {
            
            HStack {
                Text("총 395건")
                    .font(.system(size: 10))
                    .foregroundColor(Color(hex: "474646"))
                
                Spacer()
                
                Button {
                    showLatestOrder = true
                    showPopularityOrder = false
                    showDeadlineOrder = false
                } label: {
                    Text("최신순")
                        .foregroundColor(Color.black)
                        .font(.system(size: 10, weight: showLatestOrder ? .heavy: .regular))
                }
                
                Text("|")
                    .font(.system(size: 10))
                
                Button {
                    showLatestOrder = false
                    showPopularityOrder = false
                    showDeadlineOrder = true
                } label: {
                    Text("마감순")
                        .foregroundColor(Color.black)
                        .font(.system(size: 10, weight: showDeadlineOrder ? .heavy: .regular))
                }
                
                Text("|")
                    .font(.system(size: 10))
                
                Button {
                    showLatestOrder = false
                    showPopularityOrder = true
                    showDeadlineOrder = false
                } label: {
                    Text("인기순")
                        .foregroundColor(Color.black)
                        .font(.system(size: 10, weight: showPopularityOrder ? .heavy: .regular))
                }
            }
            .padding(.bottom, 15)
        }
        .padding(.top, 10)
        
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Capsule()
                        .stroke(Color(hex: "EFEFEF"))
                        .frame(width: 81, height: 25, alignment: .leading)
                        .overlay(
                            HStack {
                                Text("카테고리")
                                    .font(.system(size: 11))
                                Image(systemName: "chevron.down")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 3)
                            })
                    
                    Capsule()
                        .stroke(Color(hex: "EFEFEF"))
                        .frame(width: 55, height: 25, alignment: .leading)
                        .overlay(
                            HStack {
                                Text("IT기술")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color(hex: "ADADAD"))
                            })
                    
                    Capsule()
                        .stroke(Color(hex: "EFEFEF"))
                        .frame(width: 105, height: 25, alignment: .leading)
                        .overlay(
                            HStack {
                                Text("경영/마케팅/컨설팅")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color(hex: "ADADAD"))
                            })
                    
                    Capsule()
                        .stroke(Color(hex: "EFEFEF"))
                        .frame(width: 80, height: 25, alignment: .leading)
                        .overlay(
                            HStack {
                                Text("경제/금융")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color(hex: "ADADAD"))
                            })
                    
                    Capsule()
                        .stroke(Color(hex: "EFEFEF"))
                        .frame(width: 40, height: 25, alignment: .leading)
                        .overlay(
                            HStack {
                                Text("교육")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color(hex: "ADADAD"))
                            })
                    
                    Capsule()
                        .stroke(Color(hex: "EFEFEF"))
                        .frame(width: 70, height: 25, alignment: .leading)
                        .overlay(
                            HStack {
                                Text("문화/역사")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color(hex: "ADADAD"))
                            })
                    
                    Capsule()
                        .stroke(Color(hex: "EFEFEF"))
                        .frame(width: 55, height: 25, alignment: .leading)
                        .overlay(
                            HStack {
                                Text("사회공헌")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color(hex: "ADADAD"))
                            })
                    
                    Capsule()
                        .stroke(Color(hex: "EFEFEF"))
                        .frame(width: 55, height: 25, alignment: .leading)
                        .overlay(
                            HStack {
                                Text("콘텐츠")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color(hex: "ADADAD"))
                            })
                    
                    
                    Spacer()
                    
                }
            }
        }
        
        
        List {
            ForEach(0..<2) { i in
                HStack {
                    partnerAlliance(imgaeUrl: "student_1", category: "#IT/기술", title: "한국대학생IT경영학회", projectDescription: "기획자, 개발자, 디자이너가 모여 하나의 가치를 창조하는 IT 서비스 학회, 큐시즘")
                        .cornerRadius(7)
                        .listRowSeparator(.hidden)
                    
                    partnerAlliance(imgaeUrl: "student_2", category: "#IT/기술", title: "SOPT", projectDescription: "대학생 연합 IT 벤처 창업 동아리로 기획/개발/디자인이 프로젝트를 진행")
                    //.padding(.bottom, 10)
                        .cornerRadius(7)
                        .listRowSeparator(.hidden)
                }
                .listRowSeparator(.hidden)
                
                HStack {
                    partnerAlliance(imgaeUrl: "student_3", category: "#IT/기술", title: "멋쟁이 사자처럼", projectDescription: "2013년 이두희가 설립한 프로그래밍 교육단체로, 소프트웨어 비전공자들도 프로그래밍")
                    //.padding(.bottom, 10)
                        .cornerRadius(7)
                        .listRowSeparator(.hidden)
                    
                    partnerAlliance(imgaeUrl: "student_4", category: "#경영/마케팅/컨설팅", title: "연합마케팅 전략학회", projectDescription: "Marketing & Creative Leaders의 약자로 마케팅 마인드와 전략적 사고를 바탕이 된다.")
                    //.padding(.bottom, 10)
                        .cornerRadius(7)
                        .listRowSeparator(.hidden)
                }
                .listRowSeparator(.hidden)
            }
        }
        .padding(.horizontal, -15)
        .listStyle(.plain)
    }
}

struct PartnerStudentView_Previews: PreviewProvider {
    static var previews: some View {
        PartnerStudentView()
    }
}
