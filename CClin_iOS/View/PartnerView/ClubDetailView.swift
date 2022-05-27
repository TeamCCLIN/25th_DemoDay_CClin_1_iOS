//
//  CompanyDetailView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/26.
//

import SwiftUI

struct ClubDetailView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        ScrollView {
            VStack {
                ZStack
                {
                    Image("background_kusitms")
                    
                    HStack(spacing: 22) {
                        Image("logo_kusitms")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 129)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading) {
                            Text("IT•기술  |  회원 619명")
                                .foregroundColor(Color.white)
                                .font(SpoqaHanSansNeo.medium(size: 11))
                                .padding(.bottom, 1)
                            
                            Text("큐시즘")
                                .foregroundColor(Color.white)
                                .font(SpoqaHanSansNeo.bold(size: 30))
                                .padding(.trailing, 90)
                                .padding(.bottom, 10)
                            
                            Text("기획자, 개발자, 디자이너가 모여 하나\n의 가치를 창조하는 IT서비스 학회")
                                .font(SpoqaHanSansNeo.medium(size: 11))
                                .padding(.bottom, 20)
                        }
                    }
                    .padding(.top, 130)
                }
                
                VStack(spacing:34) {
                    
                    HStack(spacing: 0) {
                        Text("“우리 단체는 기업 측에서 ")
                            .font(SpoqaHanSansNeo.medium(size: 14))
                        
                        Text("26")
                            .foregroundColor(Color.main_club)
                            .font(SpoqaHanSansNeo.bold(size: 15))
                        
                        Text("번의 제의가 왔어요”")
                            .font(SpoqaHanSansNeo.medium(size: 14))
                    }
                    
                    HStack(spacing:16) {
                        VStack {
                            Text("진행한 프로젝트")
                                .font(SpoqaHanSansNeo.medium(size: 13))
                            
                            Image("kusitms_1")
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
                        HStack {
                            Text("동아리 소개")
                                .font(SpoqaHanSansNeo.bold(size: 17))
                                .padding(.bottom, 17)
                            
                            RoundedRectangle(cornerRadius: 5)
                                .foregroundColor(Color(hex: "F3F3F3"))
                                .frame(width: 77, height: 36)
                                .overlay(
                                    HStack {
                                        Text("25기")
                                        
                                        Image(systemName: "chevron.forward")
                                    }
                                        .font(SpoqaHanSansNeo.medium(size: 12)))
                            
                            Spacer()
                            
                        }
                        .padding(.bottom, 20)
                        
                        Text("프로젝트 내용")
                            .font(SpoqaHanSansNeo.bold(size: 13))
                        Image("kusitms_2")
                        
                    }
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
                            .foregroundColor(Color(hex: "BBBBBB"))
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

struct ClubDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ClubDetailView()
    }
}
