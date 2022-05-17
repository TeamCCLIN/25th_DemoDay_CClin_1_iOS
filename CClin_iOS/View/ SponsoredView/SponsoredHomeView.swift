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
                            .frame(width: 46, height: 25, alignment: .leading)
                            .overlay(
                                HStack {
                                    Text("제휴")
                                        .font(.system(size: 11))
                                        .foregroundColor(Color(hex: "ADADAD"))
                                })
                        
                        Capsule()
                            .stroke(Color(hex: "EFEFEF"))
                            .frame(width: 46, height: 25, alignment: .leading)
                            .overlay(
                                HStack {
                                    Text("협찬")
                                        .font(.system(size: 11))
                                        .foregroundColor(Color(hex: "ADADAD"))
                                })
                        
                        Capsule()
                            .stroke(Color(hex: "EFEFEF"))
                            .frame(width: 46, height: 25, alignment: .leading)
                            .overlay(
                                HStack {
                                    Text("홍보")
                                        .font(.system(size: 11))
                                        .foregroundColor(Color(hex: "ADADAD"))
                                })
                        
                        Spacer()
                        
                    }
                    .padding(.top, 10)
                    .padding(.bottom, 15)
                    
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
                    .padding(.bottom, 15)
                }
                .padding(.horizontal, 30)
                
                List {
                    ForEach(0..<20) { i in
                        SponsoredRowView(id: i, type: "협찬", title: "기업 프로젝트 평가단 모집", description: "5월 15일에 100명 규모 행사에 커피 브랜드 협찬 해주실 기업 초청합니다. 꼭 와주세요!", likeCnt: 85)
                            .cornerRadius(7)
                            .listRowSeparator(.hidden)
                    }
                }
                .padding(.horizontal, 10)
                .listStyle(.plain)
                
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("제휴/협찬")
                        .foregroundColor(Color.black)
                        .bold()
                        .font(.system(size: 20))
                        .padding(.leading, 15)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        //
                    } label: {
                        Image(systemName: "person.crop.circle")
                            .padding(.trailing, 15)
                    }
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
