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
                    Image("ad_goqual")
                        .frame(width: 330, height: 102, alignment: .center)
                        .padding(.bottom, 36)
                    
                    VStack {
                        HStack {
                            Text("HOT한 프로젝트")
                                .font(SpoqaHanSansNeo.bold(size: 17))
                            
                            Spacer()
                        }
                        .padding(.bottom, 18)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                HotProjectRowView(image: "dummy1", title: "스마트스토어 상세 페이지 기획 및 제작", heartCnt: 124, companyName: "파블로 항공", clickedHeart: false)
                                
                                HotProjectRowView(image: "dummy2", title: "AWS 기반 기업 데이터 분석 프로젝트", heartCnt: 124, companyName: "파블로 항공", clickedHeart: true)
                                
                                HotProjectRowView(image: "hot_project", title: "드론 적재 시스템과 시스템 운영 개념 수립", heartCnt: 124, companyName: "파블로 항공", clickedHeart: false)
                                
                                HotProjectRowView(image: "dummy1", title: "스케쥴링 앱 UI/UX 프로젝트", heartCnt: 124, companyName: "파블로 항공", clickedHeart: false)
                                
                                HotProjectRowView(image: "hot_project", title: "드론 적재 시스템과 시스템 운영 개념 수립", heartCnt: 124, companyName: "파블로 항공", clickedHeart: false)
                            }
                        }
                    }
                    .padding(.bottom, 35)
                    
                    VStack {
                        HStack {
                            Text("HOT한 기업")
                                .font(SpoqaHanSansNeo.bold(size: 17))
                            
                            Spacer()
                        }
                        .padding(.bottom, 18)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                HotCompanyRowView(image: "logo_goqual", name: "(주)고퀄")
                                HotCompanyRowView(image: "logo_trost", name: "(주)트로스트")
                                HotCompanyRowView(image: "logo_publy", name: "(주)퍼블리")
                                HotCompanyRowView(image: "logo_readyme", name: "(주)레디미")
                                HotCompanyRowView(image: "logo_kakao", name: "(주)카카오페이")
                                HotCompanyRowView(image: "logo_goqual", name: "(주)고퀄")
                                HotCompanyRowView(image: "logo_trost", name: "(주)트로스트")
                                HotCompanyRowView(image: "logo_publy", name: "(주)퍼블리")
                                HotCompanyRowView(image: "logo_kakao", name: "(주)카카오페이")
                                
                            }
                            .padding(.trailing, 14)
                        }
                        
                        
                    }
                    .padding(.bottom, 27)
                    
                    HStack{
                        Text("이번 주 새로 등록된 프로젝트")
                            .font(SpoqaHanSansNeo.bold(size: 17))
                        
                        Spacer()
                    }
                    .padding(.bottom, 10)
                    
                    VStack {
                        newAlliance(imgaeUrl: "dummy3", dday: 101, title: "개인화 뉴스 추천 서비스 개발", companyName: "(주)42마루", heartCnt: 124, commentCnt: 22)
                            .padding(.bottom, 10)
                        
                        newAlliance(imgaeUrl: "dummy4",dday: 98, title: "IoT 서비스 페르소나 설계 및 기획전 공모", companyName: "(주)고퀄", heartCnt: 134, commentCnt: 22)
                            .padding(.bottom, 10)
                        
                        newAlliance(imgaeUrl: "dummy5", dday: 33, title: "드론 적재 시스템과 시스템 운영 개념 수립", companyName: "(주)파블로항공", heartCnt: 120, commentCnt: 32)
                        
                        newAlliance(imgaeUrl: "dummy2", title: "개인화 캐릭터 추천 서비스 개발", companyName: "(주)비트바이트", heartCnt: 20, commentCnt: 22)
                            .padding(.bottom, 10)
                        
                        newAlliance(imgaeUrl: "hot_project", title: "IoT 기획전 아이디어 공모", companyName: "(주)오늘의 집", heartCnt: 120, commentCnt: 32)
                    }
                    
                    Spacer()
                }
                .padding(.top, 22)
                .padding(.horizontal, 30)
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
//                                    ClubMyPageView()
                                    CompanyMyPageView()
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
