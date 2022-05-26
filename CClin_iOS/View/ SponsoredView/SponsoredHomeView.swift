//
//  SponsoredHomeView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/17.
//

import SwiftUI

struct SponsoredHomeView: View {
    
    @State var searchInput: String = ""
    @State var showLatestOrder: Bool = true
    @State var showPopularityOrder: Bool = false
    @State var showDeadlineOrder: Bool = false
    
    @State var isMyPageViewActive: Bool = false
    @State var isSponsoredDetailViewActive: Bool = false
    @State var isPostingViewActive: Bool = false
    
    let userModel = UserModel.shared
    @State var userType: String = UserModel.shared.type.rawValue
    
    @State var sponsoredArray: [SponsoredRowView] = [
        SponsoredRowView(writer: "학생단체", type: "홍보", date: "06/12  08:01", title: "대학생 단체도 돕고 우리 브랜드 홍보도 하고!", description: "총 인원 501명인 전국 디자인학과 재학생 단체에서 인쇄가 필요합니다", likeCnt: 11, likeClicked: true),
        SponsoredRowView(writer: "기업", type: "협찬", date: "07/21 01:01", title: "에너지 드링크 협찬합니다.", description: "러닝, 스포츠 관련 동아리에 에너지 드링크 20개입 3박스", likeCnt: 33, likeClicked: false),
        SponsoredRowView(writer: "기업", type: "협찬", date: "04/26  12:10", title: "에너지 드링크 협찬합니다.", description: "러닝, 스포츠 관련 동아리에 에너지 드링크 20개입 3박스", likeCnt: 33, likeClicked: false),
        SponsoredRowView(writer: "학생단체", type: "협찬", date: "04/26  12:10", title: "에너지 드링크 협찬합니다.", description: "러닝, 스포츠 관련 동아리에 에너지 드링크 20개입 3박스", likeCnt: 33, likeClicked: false)]

    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                VStack {
                    SearchBar(placeholder: "", text: $searchInput)
                        .padding(.top, 16)
                        .padding(.bottom, 13)
                        .padding(.horizontal, 31)
                    
                    HStack {
                        Text("총 1,030건")
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
                    .padding(.bottom, 23)
                    .padding(.horizontal, 31)
                    
                    HStack {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color(hex: "F3F3F3"))
                            .frame(width: 86, height: 36)
                            .overlay(
                                HStack {
                                    Text("카테고리")
                                    
                                    Image(systemName: "chevron.right")
                                }
                                    .font(SpoqaHanSansNeo.medium(size: 12)))
                        
                        
                        Capsule()
                            .stroke(Color(hex: "EFEFEF"))
                            .frame(width: 52, height: 36, alignment: .leading)
                            .overlay(
                                HStack {
                                    Text("제휴")
                                        .font(SpoqaHanSansNeo.medium(size: 12))
                                        .foregroundColor(Color(hex: "ADADAD"))
                                })
                        
                        Capsule()
                            .stroke(Color(hex: "EFEFEF"))
                            .frame(width: 52, height: 36, alignment: .leading)
                            .overlay(
                                HStack {
                                    Text("협찬")
                                        .font(SpoqaHanSansNeo.medium(size: 12))
                                        .foregroundColor(Color(hex: "ADADAD"))
                                })
                        
                        Capsule()
                            .stroke(Color(hex: "EFEFEF"))
                            .frame(width: 52, height: 36, alignment: .leading)
                            .overlay(
                                HStack {
                                    Text("홍보")
                                        .font(SpoqaHanSansNeo.medium(size: 12))
                                        .foregroundColor(Color(hex: "ADADAD"))
                                })
                        
                        Spacer()
                        
                    }
                    .padding(.bottom, 30)
                    .padding(.horizontal, 31)
                    
                    ScrollView {
                        VStack {
                            SponsoredRowView(writer: "AD", type: "협찬", date: "04/26  12:10", title: "커피 브랜드 협찬 제의합니다", description: "5월 15일에 100명 규모 행사에 커피 브랜드 협찬 해주실", likeCnt: 12, likeClicked: false)
                            
                            Button  {
                                isSponsoredDetailViewActive = true
                            } label: {
                                SponsoredRowView(writer: "AD", type: "제휴",date: "05/15  23:57", title: "기업 프로젝트 평가단 모집", description: "5개의 기업과 10일간 진행되는 기업 프로젝트 발표식에 ", likeCnt: 11, likeClicked: true)
                            }
                            .background(
                                NavigationLink(isActive: $isSponsoredDetailViewActive, destination: {
                                    SponsoredDetailView()
                                }, label: {
                                    EmptyView()
                                })
                            )

                            SponsoredRowView(writer: "AD", type: "협찬", date: "05/23  09:27", title: "강연할 장소 협찬 구합니다", description: "2022.06.13 오후 3-5시까지 인원 30명 정도 수용 가능", likeCnt: 8, likeClicked: false)
                        }
                        
                        Rectangle()
                            .foregroundColor(Color.gray_button_line)
                            .frame(width: .infinity, height: 8)
                        
                        VStack {
                            ForEach(0..<sponsoredArray.count, id:\.self) { i in
                                sponsoredArray[i]
                                Rectangle()
                                    .foregroundColor(Color.gray_button_line)
                                    .frame(width: .infinity, height: 1)
                            }
                        }
                    }
                }
                
                Button {
                    isPostingViewActive = true
                } label: {
                    Image("ic_post_btn")
                }
                .padding(.bottom, 27)
                .padding(.trailing, 31)
                .background(
                    NavigationLink(isActive: $isPostingViewActive, destination: {
                        PostingView()
                    }, label: {
                        EmptyView()
                    })
                )
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("제휴/협찬")
                        .font(SpoqaHanSansNeo.bold(size: 20))
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

struct SponsoredHomeView_Previews: PreviewProvider {
    static var previews: some View {
        SponsoredHomeView()
    }
}
