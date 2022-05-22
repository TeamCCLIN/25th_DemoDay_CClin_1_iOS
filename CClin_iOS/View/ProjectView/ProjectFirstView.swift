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
                        
                        /*Capsule()
                            .stroke(Color(hex: "EFEFEF"))
                            .frame(width: 75, height: 25, alignment: .leading)
                            .overlay(
                                HStack {
                                    Text("브랜드 홍보")
                                        .font(.system(size: 11))
                                        .foregroundColor(Color(hex: "ADADAD"))
                                })
                         */
                        
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
                    ForEach(0..<20) { i in
                        projectAlliance(imgaeUrl: "hot_project", category: "#경쟁 #아이디어 고모 #브랜드 홍보 #기획", title: "드론 적재 시스템과 시스템 운영 개념 수립", companyName: "파블로항공")
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
                    Text("프로젝트")
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

struct ProjectFirstView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectFirstView()
    }
}
