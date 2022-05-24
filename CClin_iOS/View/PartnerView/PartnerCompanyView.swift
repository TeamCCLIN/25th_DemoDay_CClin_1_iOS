//
//  PartnerCompanyView.swift
//  CClin_iOS
//
//  Created by 홍희수 on 2022/05/23.
//

import SwiftUI

struct PartnerCompanyView: View {
    
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
                        .frame(width: 40, height: 25, alignment: .leading)
                        .overlay(
                            HStack {
                                Text("교육")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color(hex: "ADADAD"))
                            })
                    
                    Capsule()
                        .stroke(Color(hex: "EFEFEF"))
                        .frame(width: 65, height: 25, alignment: .leading)
                        .overlay(
                            HStack {
                                Text("예술/문화")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color(hex: "ADADAD"))
                            })
                    
                    Capsule()
                        .stroke(Color(hex: "EFEFEF"))
                        .frame(width: 40, height: 25, alignment: .leading)
                        .overlay(
                            HStack {
                                Text("건설")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color(hex: "ADADAD"))
                            })
                    
                    Capsule()
                        .stroke(Color(hex: "EFEFEF"))
                        .frame(width: 80, height: 25, alignment: .leading)
                        .overlay(
                            HStack {
                                Text("IT 서비스")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color(hex: "ADADAD"))
                            })
                    
                    Capsule()
                        .stroke(Color(hex: "EFEFEF"))
                        .frame(width: 40, height: 25, alignment: .leading)
                        .overlay(
                            HStack {
                                Text("제조")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color(hex: "ADADAD"))
                            })
                    
                    Capsule()
                        .stroke(Color(hex: "EFEFEF"))
                        .frame(width: 60, height: 25, alignment: .leading)
                        .overlay(
                            HStack {
                                Text("농어업")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color(hex: "ADADAD"))
                            })
                    
                    
                    Capsule()
                        .stroke(Color(hex: "EFEFEF"))
                        .frame(width: 90, height: 25, alignment: .leading)
                        .overlay(
                            HStack {
                                Text("숙박 및 음식점")
                                    .font(.system(size: 11))
                                    .foregroundColor(Color(hex: "ADADAD"))
                            })
                    
                    Capsule()
                        .stroke(Color(hex: "EFEFEF"))
                        .frame(width: 40, height: 25, alignment: .leading)
                        .overlay(
                            HStack {
                                Text("기타")
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
                    partnerAlliance(imgaeUrl: "company_1", category: "#IT서비스", title: "(주)고퀄", projectDescription: "누구나 쉽게 스마트홈을 누릴 수 있도록 스마트홈 IoT의 대중화를 이끌다")
                        .cornerRadius(7)
                        .listRowSeparator(.hidden)
                    partnerAlliance(imgaeUrl: "company_2", category: "#교육 #보건/사회복지", title: "(주)트로스트", projectDescription: "셀프케어 등을 트로스트에서 나에게 꼭 맞는 방법으로 관리해봐!")
                    //.padding(.bottom, 10)
                        .cornerRadius(7)
                        .listRowSeparator(.hidden)
                }
                .listRowSeparator(.hidden)
                 
                
                HStack {
                    partnerAlliance(imgaeUrl: "company_4", category: "#예술/문화", title: "(주)퍼블리", projectDescription: "당신 곁의 랜선 사수, 퍼블리입니다.")
                    //.padding(.bottom, 10)
                        .cornerRadius(7)
                        .listRowSeparator(.hidden)
                    partnerAlliance(imgaeUrl: "company_5", category: "#교육", title: "(주)레디미", projectDescription: "커리어 니즈를 반영한 채용 연계 프로세스를 제공하다.")
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

struct PartnerCompanyView_Previews: PreviewProvider {
    static var previews: some View {
        PartnerCompanyView()
    }
}
