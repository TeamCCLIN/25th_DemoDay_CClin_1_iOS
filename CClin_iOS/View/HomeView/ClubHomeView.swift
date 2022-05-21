//
//  ClubHomeView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/14.
//

import SwiftUI

struct ClubHomeView: View {
    
    @State var isMyPageViewActive: Bool = false
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.gray_bottom)
                        .frame(width: 329, height: 108, alignment: .center)
                        .padding(.bottom, 38)
                    
                    VStack {
                        HStack {
                            Text("HOT한 프로젝트")
                                .font(SpoqaHanSansNeo.bold(size: 17))
                            
                            Spacer()
                        }
                        .padding(.bottom, 18)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                HotProjectRowView(image: "hot_project", title: "드론 적재 시스템과 시스템 운영 개념 수립", heartCnt: 124, companyName: "파블로 항공", clickedHeart: false)
                                
                                HotProjectRowView(image: "hot_project", title: "드론 적재 시스템과 시스템 운영 개념 수립", heartCnt: 124, companyName: "파블로 항공", clickedHeart: true)
                                
                                HotProjectRowView(image: "hot_project", title: "드론 적재 시스템과 시스템 운영 개념 수립", heartCnt: 124, companyName: "파블로 항공", clickedHeart: false)
                                
                                HotProjectRowView(image: "hot_project", title: "드론 적재 시스템과 시스템 운영 개념 수립", heartCnt: 124, companyName: "파블로 항공", clickedHeart: false)
                                
                                HotProjectRowView(image: "hot_project", title: "드론 적재 시스템과 시스템 운영 개념 수립", heartCnt: 124, companyName: "파블로 항공", clickedHeart: false)
                            }
                        }
                    }
                    .padding(.bottom, 55)
                    
                    VStack {
                        HStack {
                            Text("HOT한 기업")
                                .font(SpoqaHanSansNeo.bold(size: 17))
                            
                            Spacer()
                        }
                        .padding(.bottom, 18)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                HotCompanyRowView(image: "logo_kakao", name: "(주)카카오페이")
                                HotCompanyRowView(image: "logo_kakao", name: "(주)카카오페이")
                                HotCompanyRowView(image: "logo_kakao", name: "(주)카카오페이")
                                HotCompanyRowView(image: "logo_kakao", name: "(주)카카오페이")
                                HotCompanyRowView(image: "logo_kakao", name: "(주)카카오페이")
                                HotCompanyRowView(image: "logo_kakao", name: "(주)카카오페이")
                                HotCompanyRowView(image: "logo_kakao", name: "(주)카카오페이")
                                HotCompanyRowView(image: "logo_kakao", name: "(주)카카오페이")
                                HotCompanyRowView(image: "logo_kakao", name: "(주)카카오페이")
                                
                            }
                            .padding(.trailing, 14)
                        }
                        
                        
                    }
                    .padding(.bottom, 25)
                    
                    HStack{
                        Text("이번 주 새로 등록된 프로젝트")
                            .font(SpoqaHanSansNeo.bold(size: 17))
                        
                        Spacer()
                    }
                    .padding(.bottom, 10)
                    
                    VStack {
                        newAlliance(imgaeUrl: "hot_project", dday: 102, title: "드론 적재 시스템과 시스템 운영 개념 수립", companyName: "파블로항공", heartCnt: 43, commentCnt: 22)
                            .padding(.bottom, 10)
                        
                        newAlliance(imgaeUrl: "hot_project",dday: 99, title: "개인화 뉴스 추천 서비스 개발", companyName: "큐시즘", heartCnt: 20, commentCnt: 22)
                            .padding(.bottom, 10)
                        
                        newAlliance(imgaeUrl: "hot_project", dday: 33, title: "IoT 서비스 페르소나 설계 및 기획전 아이디어 공모", companyName: "큐시즘", heartCnt: 120, commentCnt: 32)
                        
                        newAlliance(imgaeUrl: "hot_project", title: "개인화 뉴스 추천 서비스 개발", companyName: "큐시즘", heartCnt: 20, commentCnt: 22)
                            .padding(.bottom, 10)
                        
                        newAlliance(imgaeUrl: "hot_project", title: "IoT 서비스 페르소나 설계 및 기획전 아이디어 공모", companyName: "큐시즘", heartCnt: 120, commentCnt: 32)
                    }
                    
                    Spacer()
                }
                .padding(.top, 20)
                .padding(.horizontal, 31)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("홈")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.bold(size: 20))
                            .padding(.leading, 15)
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack {
                            Button {
                                //
                            } label: {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color.black)
                            }
                            
                            Button {
                                isMyPageViewActive = true
                            } label: {
                                Image("ic_mypage")
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
        
    }
}

struct ClubHomeView_Previews: PreviewProvider {
    static var previews: some View {
        ClubHomeView()
    }
}
