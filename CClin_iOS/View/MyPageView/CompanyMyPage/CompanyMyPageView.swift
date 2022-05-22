//
//  CompanyMyPageView.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/21.
//

import SwiftUI

struct CompanyMyPageView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var isNotificationViewActive: Bool = false
    
    var body: some View {
            VStack(spacing: 16) {
        
                HStack(spacing:14) {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 90)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray_button_line, lineWidth: 2))
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("IT/기술 | 회원 10명")
                            .font(SpoqaHanSansNeo.medium(size: 10))
                        Text("고퀄")
                            .font(SpoqaHanSansNeo.bold(size: 30))
                        Text("누구나 쉽게 스마트홈을 누릴 수 있도록 스마트홈 IoT의 대중화를 이끄는 스타트업")
                            .font(SpoqaHanSansNeo.medium(size: 10))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.gray_bottom)
                .cornerRadius(7)
                
                Button {
                    //
                } label: {
                    HStack(spacing:16) {
                        Image(systemName: "heart.fill")
                            .foregroundColor(Color.main_club)
                        
                        Text("찜한 목록")
                            .font(SpoqaHanSansNeo.medium(size: 10))
                            .foregroundColor(Color.black)
                        
                        Spacer()
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray_bottom)
                    .cornerRadius(7)
                }

                
                Button {
                    //
                } label: {
                    VStack {
                    HStack(spacing:16) {
                        Image("ic_project")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 15)
                            
                        Text("나의 프로젝트")
                            .font(SpoqaHanSansNeo.medium(size: 10))
                            .foregroundColor(Color.black)
                        
                        Spacer()
                    }
                        HStack(spacing:51) {
                            VStack {
                                Image("ic_waiting")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height:27)
                                
                                Text("선정 대기")
                                    .font(SpoqaHanSansNeo.regular(size: 12))
                                    .foregroundColor(Color.gray_text)
                                
                                Text("1")
                                    .font(SpoqaHanSansNeo.bold(size: 12))
                                    .foregroundColor(Color.black)
                            }
                            
                            VStack {
                                Image("ic_proceeding")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height:27)
                                
                                Text("진행중")
                                    .font(SpoqaHanSansNeo.regular(size: 12))
                                    .foregroundColor(Color.gray_text)
                                
                                Text("0")
                                    .font(SpoqaHanSansNeo.bold(size: 12))
                                    .foregroundColor(Color.black)
                            }
                            
                            VStack {
                                Image("ic_complete")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height:27)
                                
                                Text("진행완료")
                                    .font(SpoqaHanSansNeo.regular(size: 12))
                                    .foregroundColor(Color.gray_text)
                                
                                Text("0")
                                    .font(SpoqaHanSansNeo.bold(size: 12))
                                    .foregroundColor(Color.black)
                            }
                        }
                        .padding()
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray_bottom)
                    .cornerRadius(7)
                }

                
                HStack(spacing:16) {
                    Image("ic_questions")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height:22)
                    
                    Text("문의사항")
                        .font(SpoqaHanSansNeo.medium(size: 10))
                    
                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.gray_bottom)
                .cornerRadius(7)
                
                HStack(spacing:16) {
                    Image("ic_information")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height:16)
                    
                    Text("개인정보 처리방침")
                        .font(SpoqaHanSansNeo.medium(size: 10))
                    
                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.gray_bottom)
                .cornerRadius(7)
                
                Spacer()
                    .frame(height:70)
                
                Button {
                    //
                } label: {
                    Text("로그아웃")
                        .font(SpoqaHanSansNeo.medium(size: 15))
                        .foregroundColor(Color.gray_text)
                        .underline()
                }
                
                Spacer()

            }
            .padding(.top, 26)
            .padding(.horizontal, 39)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                       self.mode.wrappedValue.dismiss()
                   } label: {
                       Image(systemName: "chevron.backward")
                           .foregroundColor(Color.black)
                           .font(SpoqaHanSansNeo.regular(size: 20))
                   }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Button {
                            isNotificationViewActive = true
                        } label: {
                            Image(systemName: "bell")
                                .foregroundColor(Color.black)
                        }
                        .background(
                            NavigationLink(isActive: $isNotificationViewActive, destination: {
                                NotificationView()
                            }, label: {
                                EmptyView()
                            })
                        )
                        
                        Button {
                            //
                        } label: {
                            Image(systemName: "gearshape")
                                .foregroundColor(Color.black)
                                .padding(.trailing, 15)
                        }
                    }
                    
                }
            }
        }
    }

struct CompanyMyPageView_Previews: PreviewProvider {
    static var previews: some View {
        CompanyMyPageView()
    }
}
