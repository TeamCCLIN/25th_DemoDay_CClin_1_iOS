//
//  CompanyDetailView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/26.
//

import SwiftUI

struct CompanyDetailView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var isNotificationViewActive: Bool = false
    @State var isKeepViewActive: Bool = false
    @State var isMyProjectViewActive: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                ZStack
                {
                    Image("background_goqual")
                    
                    HStack(spacing: 22) {
                        Image("logo_goqual")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 129)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading) {
                            Text("IT•웹•통신  |  스타트업")
                                .foregroundColor(Color.white)
                                .font(SpoqaHanSansNeo.medium(size: 11))
                            
                            Text("고퀄")
                                .foregroundColor(Color.white)
                                .font(SpoqaHanSansNeo.bold(size: 30))
                                .padding(.trailing, 90)
                                .padding(.bottom, 20)
                            
                            Text("누구나 쉽게 스마트홈을 누릴 수 있도록  스마트홈 IoT의 대중화를 이끌다")
                                .font(SpoqaHanSansNeo.medium(size: 11))
                                .padding(.bottom, 20)
                        }
                    }
                    .padding(.top, 130)
                }
                
                VStack(spacing:34) {
                
                HStack(spacing: 0) {
                    Text("“우리 기업은 학생단체와 ")
                        .font(SpoqaHanSansNeo.medium(size: 14))
                    
                    Text("8")
                        .foregroundColor(Color.main_club)
                        .font(SpoqaHanSansNeo.bold(size: 15))
                    
                    Text("번의 프로젝트를 진행했어요”")
                        .font(SpoqaHanSansNeo.medium(size: 14))
                }
                
                HStack(spacing:16) {
                    VStack {
                        Text("진행한 프로젝트")
                            .font(SpoqaHanSansNeo.medium(size: 13))
                        
                        Image("dummy4")
                            .resizable()
                            .frame(width: 157, height: 94)
                            .cornerRadius(5)
                    }
                    
                    VStack {
                        Text("진행한 제휴/협찬")
                            .font(SpoqaHanSansNeo.medium(size: 13))
                        
                        Image("dummy6")
                            .resizable()
                            .frame(width: 157, height: 94)
                            .cornerRadius(5)
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("기업 소개")
                        .font(SpoqaHanSansNeo.bold(size: 17))
                        .padding(.bottom, 17)
                    
                    Text("고퀄(Goqual)은 대한민국 IoT의 대중화를 이끌고 있습니다.")
                        .font(SpoqaHanSansNeo.medium(size: 13))
                        .padding(.bottom, 8)
                    
                    Text("우리는 생활에 필요한 모든 것들을 연결하여 일상 속의 새로운 가치를 제안 합니다.우리의 IoT 통합 솔루션을 통해  모든 공간 속에서 편리와 안전을 제공하고, 매일 새로운 삶을 만들어 갑니다.")
                        .foregroundColor(Color(hex: "898989"))
                        .font(SpoqaHanSansNeo.medium(size: 11))
                        .padding(.bottom, 13)
                    
                    HStack(spacing: 10) {
                        ForEach(1..<5 , id:\.self) { i in
                            Image("goqual\(i)")
                                .resizable()
                                .frame(width: 75, height: 75)
                        }
                    }
                }
                    
                    VStack(alignment: .leading) {
                        Text("개요")
                            .font(SpoqaHanSansNeo.bold(size: 17))
                            .padding(.bottom, 8)
                        
                        Image("goqual5")
                            .resizable()
                            .frame(width: 329, height: 282)
                    }
                
                    VStack(alignment: .leading) {
                        HStack {
                        Text("연혁")
                            .font(SpoqaHanSansNeo.bold(size: 17))
                            .padding(.bottom, 8)
                            
                            Spacer()
                        }
                        
                        Image("goqual6")
                            .resizable()
                            .frame(width: 274, height: 231)
                    }
                    
                    Spacer()
                        .frame(height: 40)
                }
                .padding(.horizontal, 31)
            }
        }
        .ignoresSafeArea()
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    self.mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(Color.white)
                        .font(SpoqaHanSansNeo.regular(size: 20))
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                HStack {
                    Button {
                        //
                    } label: {
                        Image(systemName: "heart.fill")
                            .foregroundColor(Color.main_club)
                    }
                    Button {
                        //
                    } label: {
                        Image("ic_world")
                    }
                    
                    Button {
                        //
                    } label: {
                        Image("ic_chat")
                            .padding(.trailing, 15)
                    }
                }
                
            }
        }
        
    }
}

struct CompanyDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CompanyDetailView()
    }
}
