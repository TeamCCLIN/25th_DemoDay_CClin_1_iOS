//
//  ProjectFirstView.swift
//  CClin_iOS
//
//  Created by 홍희수 on 2022/05/21.
//

import SwiftUI

struct ProjectFirstView: View {
    
    @State var searchInput: String = ""
    @State var showLatestOrder: Bool = true
    @State var showPopularityOrder: Bool = false
    @State var showDeadlineOrder: Bool = false
    @State var isMyPageViewActive: Bool = false
    @State var isProjectDetailViewActive: Bool = false
    @State var isDetailViewActive: Bool = false
    
    @ObservedObject var user = UserModel.shared
    
    let categoryList: [String] = ["경쟁", "인재 채용", "아이디어 공모", "기타"]
    
    @State var projectList:  [ProjectRow] =  [
        ProjectRow(imgaeUrl: "project_1", category: "#경쟁 #아이디어 공모 #브랜드 홍보 #기획", title: "IoT 서비스의 페르소나 설계 및 기획전 아이디어 공모", companyName: "(주)고퀄"),
        ProjectRow(imgaeUrl: "project_2", category: "# 인재 채용   # 아이디어 공모   # UI/UX", title: "다수의 이동체 관제 모니터링 화면 UI/UX 최적화 방안 공모", companyName: "(주)파블로항공"),
        ProjectRow(imgaeUrl: "project_3", category: "# 외주   # SW 개발", title: "드론 적재 시스템과 시스템 운영개념 수립 및 개념 설계", companyName: "(주)파블로항공"),
        ProjectRow(imgaeUrl: "project_4", category: "#경쟁 #인재 채용 #SW 개발", title: "한국어 뉴스 요약 모델을 활용한 개인화 뉴스추천 서비스 개발", companyName: "42Maru"),
        ProjectRow(imgaeUrl: "project_5", category: "#인재채용 #기획 #UI/UX", title: "사이드 프로젝트 플랫폼 서비스 기획", companyName: "팀메모리")]
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    SearchBar(placeholder: "", text: $searchInput)
                        .padding(.top, 10)
                    
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
                    .padding(.top, 10)
                    .padding(.bottom, 15)
                    
                    HStack {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color(hex: "F3F3F3"))
                            .frame(width: 86, height: 36, alignment: .leading)
                            .overlay(
                                HStack {
                                    Text("카테고리")
                                    Image(systemName: "chevron.right")
                                }
                                    .font(SpoqaHanSansNeo.medium(size: 12))
                            )
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(categoryList, id:\.self) { category in
                                    Text(category)
                                        .foregroundColor(Color(hex: "9E9E9E"))
                                        .font(SpoqaHanSansNeo.medium(size: 12))
                                        .padding(.vertical, 7)
                                        .padding(.horizontal, 15)
                                        .background(
                                            Capsule()
                                                .stroke(Color.gray_button_line))
                                }
                            }
                        }
                    }
                }
                .padding(.bottom, 20)
                .padding(.horizontal, 30)
                
                ScrollView {
                    VStack {
                        ForEach(projectList, id: \.self) { project in
                            Button {
                                isDetailViewActive = true
                            } label: {
                                ProjectRowView(imgaeUrl: project.imgaeUrl, category: project.category, title: project.title, companyName: project.companyName)
                            }
                            .background(
                                NavigationLink(isActive: $isDetailViewActive, destination: {
                                    ProjectDetailView()
                                }, label: {
                                    EmptyView()
                                })
                            )
                        }
                    }
                }
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("프로젝트")
                        .foregroundColor(Color.black)
                        .font(SpoqaHanSansNeo.bold(size: 20))
                        .padding(.leading, 15)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isMyPageViewActive = true
                    } label: {
                        Image("ic_mypage")
                            .padding(.trailing, 15)
                    }
                    .background(
                        NavigationLink(isActive: $isMyPageViewActive, destination: {
                            if user.type == .club {
                                ClubMyPageView()
                            } else {
                                CompanyMyPageView()
                            }
                        }, label: {
                            EmptyView()
                        })
                    )
                }
            }
        }
    }
}

struct ProjectFirstView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectFirstView()
    }
}
