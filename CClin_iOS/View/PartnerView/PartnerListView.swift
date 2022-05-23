//
//  PartnerListView.swift
//  CClin_iOS
//
//  Created by 홍희수 on 2022/05/21.
//

import SwiftUI

struct PartnerListView: View {
    
    @State var searchInput: String = ""
    @State var showLatestOrder: Bool = true
    @State var showPopularityOrder: Bool = false
    @State var showDeadlineOrder: Bool = false
    @State var isMyPageViewActive: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    SearchBar(placeholder: "", text: $searchInput)
                        .padding(.top, 10)
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
                                    Text("경쟁")
                                        .font(.system(size: 11))
                                        .foregroundColor(Color(hex: "ADADAD"))
                                })
                        
                        Capsule()
                            .stroke(Color(hex: "EFEFEF"))
                            .frame(width: 70, height: 25, alignment: .leading)
                            .overlay(
                                HStack {
                                    Text("인재 채용")
                                        .font(.system(size: 11))
                                        .foregroundColor(Color(hex: "ADADAD"))
                                })
                        
                        Capsule()
                            .stroke(Color(hex: "EFEFEF"))
                            .frame(width: 80, height: 25, alignment: .leading)
                            .overlay(
                                HStack {
                                    Text("아이디어 공모")
                                        .font(.system(size: 11))
                                        .foregroundColor(Color(hex: "ADADAD"))
                                })
                        
                        Spacer()
                        
                    }
                    .padding(.top, 10)
                    .padding(.bottom, 15)
                    
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
                .padding(.horizontal, 30)
                
                List {
                    ForEach(0..<2) { i in
                        partnerAlliance(imgaeUrl: "hot_project", category: "#IT서비스", title: "(주)고퀄", projectDescription: "누구나 쉽게 스마트홈을 누릴 수 있도록 스마트홈 IoT의 대중화를 이끌다")
                            .cornerRadius(7)
                            .listRowSeparator(.hidden)
                        partnerAlliance(imgaeUrl: "hot_project", category: "#교육 #보건/사회복지", title: "(주)트로스트", projectDescription: "셀프케어, 심리상담, 심리워크샵, 명상, ASMR 사운드, AI챗봇, 정신과 병원·약물 정보까지. 트로스트에서 나에게 꼭 맞는 방법으로 일상 상황의 마음을 관리해봐!")
                            //.padding(.bottom, 10)
                            .cornerRadius(7)
                            .listRowSeparator(.hidden)
                        partnerAlliance(imgaeUrl: "hot_project", category: "#경쟁 #아이디어 공모 #브랜드 홍보 #기획", title: "(주)카카오페이", projectDescription: "송금, 결제, 멤버십으로 생활하다. 시간/장소 걱정없이 돈을 보내고, 필요한 것은 바로 사고")
                            //.padding(.bottom, 10)
                            .cornerRadius(7)
                            .listRowSeparator(.hidden)
                        partnerAlliance(imgaeUrl: "hot_project", category: "#인재 채용 #아이디어 공모 #UI/UX", title: "(주)컬리", projectDescription: "2015년 서비스 런칭 이후, 국내에서 가장 빠른 배송 서비스, 미식가와 주부들을 사로잡은")
                            //.padding(.bottom, 10)
                            .cornerRadius(7)
                            .listRowSeparator(.hidden)
                        partnerAlliance(imgaeUrl: "hot_project", category: "#앱 UI 개선안 #프로젝트 공모", title: "(주)무신사", projectDescription: "무신사는 700만 회원을 보유한 국내 1위 온라인 패션 플랫폼입니다. 스트릿, 글로벌 명품")
                            //.padding(.bottom, 10)
                            .cornerRadius(7)
                            .listRowSeparator(.hidden)
                    }
                }
                .padding(.horizontal, 10)
                .listStyle(.plain)
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("끌린파트너")
                        .foregroundColor(Color.black)
                        .font(SpoqaHanSansNeo.bold(size: 20))
                        .padding(.leading, 15)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isMyPageViewActive = true
                    } label: {
                        Image(systemName: "person.crop.circle")
                            .padding(.trailing, 15)
                    }
                    .background(
                        NavigationLink(isActive: $isMyPageViewActive, destination: {
                            ClubMyPageView()
                        }, label: {
                            EmptyView()
                        })
                    )
                }
            }
        }
    }
}

struct PartnerListView_Previews: PreviewProvider {
    static var previews: some View {
        PartnerListView()
    }
}
