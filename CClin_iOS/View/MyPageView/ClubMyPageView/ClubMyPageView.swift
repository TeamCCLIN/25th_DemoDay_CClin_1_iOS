//
//  ClubMyPageView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/20.
//

import SwiftUI

struct ClubMyPageView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var showLoginView:Bool = false
    
    var body: some View {
        VStack {
            ZStack
            {
                Image("background_1q")
                
                HStack(spacing: 22) {
                    Image("logo_1q")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 129)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        Text("IT•기술 | 회원 49명")
                            .foregroundColor(Color.white)
                            .font(SpoqaHanSansNeo.medium(size: 11))
                        
                        HStack {
                            Text("원큐")
                                .foregroundColor(Color.white)
                                .font(SpoqaHanSansNeo.bold(size: 30))
                                .padding(.trailing, 90)
                            
                            Image(systemName: "pencil")
                                .font(SpoqaHanSansNeo.bold(size: 20))
                                .foregroundColor(Color.white)
                        }
                        .padding(.bottom, 20)
                        
                        Text("서비스 끌린을 만드는 팀, 원큐입니다.")
                            .font(SpoqaHanSansNeo.medium(size: 11))
                            .padding(.bottom, 20)
                    }
                }
                .padding(.top, 130)
                
                Rectangle()
                    .foregroundColor(Color.gray_button_line)
                    .frame(height: 1)
                    .padding(.top, 275)
                    .padding(.horizontal, 33)
            }
            
            VStack {
                HStack {
                    Text("나의 프로젝트")
                        .font(SpoqaHanSansNeo.medium(size: 15))
                    
                    Spacer()
                }
                
                HStack(spacing:67) {
                    VStack(spacing:6) {
                        Image("ic_waiting_yellow")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height:28)
                        
                        Text("선정 대기")
                            .font(SpoqaHanSansNeo.medium(size: 11))
                            .foregroundColor(Color(hex: "9E9E9E"))
                        
                        Text("1")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.bold(size: 13))
                    }
                    
                    VStack(spacing:6) {
                        Image("ic_proceeding")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height:29)
                        
                        Text("진행중")
                            .font(SpoqaHanSansNeo.medium(size: 11))
                            .foregroundColor(Color(hex: "9E9E9E"))
                        
                        Text("0")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.bold(size: 13))
                    }
                    
                    VStack(spacing:6) {
                        Image("ic_complete")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height:26)
                        
                        Text("진행완료")
                            .font(SpoqaHanSansNeo.medium(size: 11))
                            .foregroundColor(Color(hex: "9E9E9E"))
                        
                        Text("0")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.bold(size: 13))
                    }
                }
                .padding()
                
            }
            .padding(.bottom, 23)
            
            VStack(spacing: 13) {
                HStack {
                    Button {
                        //
                    } label: {
                        Text("찜한 목록")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.medium(size: 15))
                    }
                    
                    Spacer()
                }
                .padding()
                .frame(height:55)
                .background(Color.gray_bottom)
                .cornerRadius(7)
                
                HStack {
                    Button {
                        //
                    } label: {
                        Text("문의사항")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.medium(size: 15))
                    }
                    
                    Spacer()
                }
                .padding()
                .frame(height:55)
                .background(Color.gray_bottom)
                .cornerRadius(7)
                
                HStack {
                    Button {
                        //
                    } label: {
                        Text("개인정보 처리방침")
                            .foregroundColor(Color.black)
                            .font(SpoqaHanSansNeo.medium(size: 15))
                    }
                    
                    Spacer()
                }
                .padding()
                .frame(height:55)
                .background(Color.gray_bottom)
                .cornerRadius(7)
            }
            
            Spacer()
                .frame(height:31)
            
            Button {
                showLoginView = true
            } label: {
                Text("로그아웃")
                    .font(SpoqaHanSansNeo.medium(size: 11))
                    .foregroundColor(Color.gray_text)
                    .underline()
            }
            
            Spacer()
            
        }
        .ignoresSafeArea()
        .padding(.horizontal, 30)
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
                        Image("ic_notification_white")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 24)
                    }
                    Button {
                        //
                    } label: {
                        Image(systemName: "gearshape")
                            .foregroundColor(Color.white)
                            .padding(.trailing, 15)
                    }
                }
                
            }
        }
        .fullScreenCover(isPresented: $showLoginView) {
            LoginView()
        }
    }
}

struct ClubMyPageView_Previews: PreviewProvider {
    static var previews: some View {
        ClubMyPageView()
    }
}
